#include <iostream>
#include <fstream>
#include <cmath>
#include <cstdlib>
#include <time.h>

/*
 * 2^n + 1 * 2^n + 1
 */

using namespace std;

const int SIZE = 513;

int** setMap(int**, double, int);

int main()
{
	srand(time(NULL));
	int **start = new int *[2];
	for(int i = 0; i < 2; i++)
	{
		start[i] = new int [2];
	}

	for(int i = 0; i < 2; i++)
	{
		for(int j = 0; j < 2; j++)
		{
			start[i][j] = (rand()%65536);
			cout << start[i][j] << " ";
		}
		cout << endl;
	}

	double r = 0.6;
	double d = 1.0;
	int **end = setMap(start, d, 2);

	for(int i = 1; i <= 9; i++)
	{
		d = d*pow(2,-r);
		end = setMap(end, d, pow(2, i)+1);
	}

	

	FILE *fout;
	fout = fopen("midpoint.ppm", "w");

	fprintf(fout, "P3\n%d %d\n%d\n", SIZE, SIZE, 255);

	for(int i = 0; i < SIZE; i++)
	{
		for(int j = 0; j < SIZE; j++)
		{
			fprintf(fout, "%d\n%d\n%d\n", end[i][j]/256, end[i][j]%256, 0);
		}
	}

	for(int i = 0; i < SIZE; i++)
	{
		delete [] end[i];
	}
	delete [] end;
	end = 0;
}

int** setMap(int **in, double displace, int size)
{
	double d = displace;
	int newLen = 2*size-1;
	int **result = new int *[newLen];

	for(int i = 0; i < newLen; i++)
	{
		result[i] = new int[newLen];
	}

	for(int i = 0; i < size; i++)
	{
		for(int j = 0; j < size; j++)
		{
			result[i*2][j*2] = in[i][j];
		}
	}

	for(int i = 1; i < newLen; i+=2)
	{
		for(int j = 1; j < newLen; j+=2)
		{
			result[i][j] = (int)(((result[i-1][j-1] + result[i+1][j-1] + result [i-1][j+1] + result[i+1][j+1])/4.0) + d);
		}
	}
	
	for(int i = 0; i < newLen; i++)
	{
		for(int j = (i%2 == 0); j< newLen; (i%2 == 0 ? j+=2 : j++))
		{
			result[i][j] = (int)((( (i!=0 ? result[i-1][j] : 0) + (j!=0 ? result[i][j-1] : 0) + (i!=newLen-1 ? result[i+1][j] : 0) + (j!=newLen-1 ? result[i][j+1] : 0) ) / ((i==0 || j ==0 || i == newLen-1 || j == newLen-1) ? 3.0 : 4.0)) + d);
		}
	}
	
	return result;
}
