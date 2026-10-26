#include <stdio.h>

int main(void)
{
	char name[64];

	printf("Enter the text string: ");
	fgets(name, sizeof(name), stdin);
	printf("You entered: %s\n", name);

	return 0;
}
