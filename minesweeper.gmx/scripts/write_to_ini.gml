name = argument[0];
value = argument[1];

ini_open("stats.ini");
ini_write_real("stats", name, value);
ini_close();
