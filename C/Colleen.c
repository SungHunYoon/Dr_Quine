#include <stdio.h>
/*
	This program will print its own source when run.
*/
char S[] = "#include <stdio.h>%c/*%c%cThis program will print its own source when run.%c*/%cchar S[] = %c%s%c;%c%cvoid colleen() {%c%cprintf(S, 10, 10, 9, 10, 10, 34, S, 34, 10, 10, 10, 9, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10);%c}%c%cint main() {%c%c/*%c%cAnother function in addition to the main function%c%c*/%c%ccolleen();%c%creturn 0;%c}";

void colleen() {
	printf(S, 10, 10, 9, 10, 10, 34, S, 34, 10, 10, 10, 9, 10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10);
}

int main() {
	/*
	Another function in addition to the main function
	*/
	colleen();
	return 0;
}