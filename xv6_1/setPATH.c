#include "types.h"
#include "stat.h"
#include "user.h"

int
set_path( char * p ) {
	int n = strlen(p);
	char *path[10];
	//for (int i = 0 ;  i < n ; i++)
	//	path[i] = "";
	//int ind = 0;
	for (int i = 0 ;  i < n ; i++)
	{

	}
	path[0] = p;
	path[1] = p + 4*2;
	printf(1, path[0]);
	printf(1, "\n");
	printf(1, path[1]);
	printf(1, "\n");

	return -1;
}

int
main(int argc, char *argv[])
{
	//printf(1, argv[1]);
	printf(1, "\n");
	if (argc != 2){
    		printf(2, "Usage: setPATH <path1>:<path2>...(upto 10 paths)\n");
		exit();
  	}
	int res = set_path(argv[1]);
	if (res > 0)
		printf(2, "Too many Paths, use 10 max\n");
	if (res < 0)
		printf(2, "Illeagal PATH\n");	 		
	exit();
}

