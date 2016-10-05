//This is my implementation of the midpoint displacement algorithm

#include <stdio.h>

int main()
{
	int height = 10;
	int width = 10;
	int color = 0;
	int i, j;
	FILE *fout;

	fout = fopen ("midpoint.ppm", "w");

	fprintf(fout, "P3\n%d %d \n255\n", height, width);


	fclose(fout);
}
