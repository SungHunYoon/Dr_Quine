#include <stdio.h>
/* This program will print its own source when run. */
#define FNAME "Grace_kid.c"
#define FCONTENT "#include <stdio.h>%c/* This program will print its own source when run. */%c#define FNAME %c%s%c%c#define FCONTENT %c%s%c%c#define FT(x) int main() { FILE* fp = fopen(x, %cw%c); if(fp == 0) return 0; fprintf(fp, FCONTENT, 10, 10, 34, FNAME, 34, 10, 34, FCONTENT, 34, 10, 34, 34, 10); fclose(fp); return 0; }%cFT(FNAME)"
#define FT(x) int main() { FILE* fp = fopen(x, "w"); if(fp == 0) return 0; fprintf(fp, FCONTENT, 10, 10, 34, FNAME, 34, 10, 34, FCONTENT, 34, 10, 34, 34, 10); fclose(fp); return 0; }
FT(FNAME)