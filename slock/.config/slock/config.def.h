/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "black",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
    [TEXT] = "#FFFFFF"
};

/*
 * Xresources preferences to load at startup
 */
ResourcePref resources[] = {
		{ "color0",       STRING,  &colorname[INIT] },
		{ "color4",       STRING,  &colorname[INPUT] },
		{ "color1",       STRING,  &colorname[FAILED] },
		{ "color8",       STRING,  &colorname[TEXT] },
};

/* lock screen opacity */
static const float alpha = 0.5;

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 0;

/* default message */
static const char * message = "screen is locked";

/* text size (must be a valid size) */
static const char * text_size = "-*-terminus-bold-r-normal-*-32-*-*-*-*-*-*-*";
