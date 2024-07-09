int i = 5;
#include <stdio.h>
#include <string.h>
char N[] = "Sully_%d.c";
char V[] = "int i = %d;%c";
char S[] = "#include <stdio.h>%c#include <string.h>%cchar N[] = %c%s%c;%cchar V[] = %c%s%c;%cchar S[] = %c%s%c;%cint main() { if (strcmp(__FILE__, %cSully.c%c) != 0) i--; if (i < 0) return 0; char fname[20]; sprintf(fname, N, i); FILE *fp = fopen(fname, %cw%c); if (fp == 0) return 0; fprintf(fp, V, i, 10); fprintf(fp, S, 10, 10, 34, N, 34, 10, 34, V, 34, 10, 34, S, 34, 10, 34, 34, 34, 34); fclose(fp); return 0; }";
int main() { if (strcmp(__FILE__, "Sully.c") != 0) i--; if (i < 0) return 0; char fname[20]; sprintf(fname, N, i); FILE *fp = fopen(fname, "w"); if (fp == 0) return 0; fprintf(fp, V, i, 10); fprintf(fp, S, 10, 10, 34, N, 34, 10, 34, V, 34, 10, 34, S, 34, 10, 34, 34, 34, 34); fclose(fp); return 0; }