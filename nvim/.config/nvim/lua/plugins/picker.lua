return {
    "nvim-mini/mini.pick",
    opts = {},
    keys = {
        { "<leader>ff", "<CMD>Pick files<CR>",            desc = "Mini pick find files" },
        { "<leader>fs", "<CMD>Pick grep<CR>",             desc = "Mini pick grep string under cursor" },
        { "<leader>fg", "<CMD>Pick grep_live<CR>",        desc = "Mini pick live grep" },
        { "<leader>gg", "<CMD>Pick files tool='git'<CR>", desc = "Mini pick git grep" },
        { "<leader>fb", "<CMD>Pick buffers<CR>",          desc = "Mini pick buffers" },
        { "<leader>fh", "<CMD>Pick help<CR>",             desc = "Mini pick help tags" },
        { "<leader>cs", "<CMD>Pick colorschemes<CR>",     desc = "Mini pick colorscheme" },
    },
    config = function(_, opts)
        local pick = require("mini.pick")
        pick.setup(opts)

        local hooks = {
            pre_hooks = {},
            post_hooks = {},
        }

        vim.api.nvim_create_autocmd({ "User" }, {
            pattern = "MiniPickStart",
            group = vim.api.nvim_create_augroup("minipick-pre-hooks", { clear = true }),
            desc = "Invoke pre_hook for specific picker based on source.name.",
            callback = function(...)
                local picker_opts = pick.get_picker_opts() or {}
                local pre_hook = hooks.pre_hooks[picker_opts.source.name] or function(...) end
                pre_hook(...)
            end,
        })

        vim.api.nvim_create_autocmd({ "User" }, {
            pattern = "MiniPickStop",
            group = vim.api.nvim_create_augroup("minipick-post-hooks", { clear = true }),
            desc = "Invoke post_hook for specific picker based on source.name.",
            callback = function(...)
                local picker_opts = pick.get_picker_opts() or {}
                local post_hook = hooks.post_hooks[picker_opts.source.name] or function(...) end
                post_hook(...)
            end,
        })

        local selected_colorscheme -- Currently selected or original colorscheme

        hooks.pre_hooks.Colorschemes = function()
            selected_colorscheme = vim.g.colors_name
        end

        hooks.post_hooks.Colorschemes = function()
            vim.cmd("colorscheme " .. selected_colorscheme)
        end

        pick.registry.colorschemes = function()
            local colorschemes = vim.fn.getcompletion("", "color")
            return pick.start({
                source = {
                    name = "Colorschemes",
                    items = colorschemes,
                    choose = function(item)
                        selected_colorscheme = item
                        local theme_file = vim.fn.stdpath("data") .. "/persistent_colorscheme.txt"
                        vim.fn.writefile({ item }, theme_file)
                    end,
                    preview = function(buf_id, item)
                        vim.cmd("colorscheme " .. item)
                        vim.api.nvim_buf_set_lines(buf_id, 0, -1, false, { "Previewing: " .. item })
                    end,
                },
            })
        end
    end
}
