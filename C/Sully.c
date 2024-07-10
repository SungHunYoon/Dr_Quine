int i = 5;
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char E[] = "Sully_%d";
char N[] = "Sully_%d.c";
char C[] = "cc -Wall -Wextra -Werror -o %s %s && ./%s";
char V[] = "int i = %d;%c";
char S[] = "#include <stdio.h>%c#include <string.h>%c#include <stdlib.h>%cchar E[] = %c%s%c;%cchar N[] = %c%s%c;%cchar C[] = %c%s%c;%cchar V[] = %c%s%c;%cchar S[] = %c%s%c;%cint main() { if (strcmp(__FILE__, %cSully.c%c) != 0) i--; if (i < 0) return 0; char fname[20]; char oname[20]; sprintf(fname, N, i); sprintf(oname, E, i); FILE *fp = fopen(fname, %cw%c); if (fp == 0) return 0; fprintf(fp, V, i, 10); fprintf(fp, S, 10, 10, 10, 34, E, 34, 10, 34, N, 34, 10, 34, C, 34, 10, 34, V, 34, 10, 34, S, 34, 10, 34, 34, 34, 34); fclose(fp); char compile[100]; sprintf(compile, C, oname, fname, oname); system(compile); return 0; }";
int main() { if (strcmp(__FILE__, "Sully.c") != 0) i--; if (i < 0) return 0; char fname[20]; char oname[20]; sprintf(fname, N, i); sprintf(oname, E, i); FILE *fp = fopen(fname, "w"); if (fp == 0) return 0; fprintf(fp, V, i, 10); fprintf(fp, S, 10, 10, 10, 34, E, 34, 10, 34, N, 34, 10, 34, C, 34, 10, 34, V, 34, 10, 34, S, 34, 10, 34, 34, 34, 34); fclose(fp); char compile[100]; sprintf(compile, C, oname, fname, oname); system(compile); return 0; }