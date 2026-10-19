#include <stdio.h>
#include <unistd.h>
#include <dirent.h>

int listdir (char *path) {
	DIR *directory;
	directory = opendir(path);	
	
	if (directory == NULL) {
		perror("Failed to open the directory");
		return -1;
	}

	struct dirent *st_directory;

	while (st_directory != NULL) {
	puts(st_directory->d_name);	
	st_directory = readdir(directory);	
	}
	closedir(directory);

	return 0;
}

int main(int argc, char *argv[])
{
	listdir(argv[1]);
	return 0;
}
