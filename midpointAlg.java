//

public class midpointAlg
{
	public static void main(String [] args)
	{
		double start[][] = {{1.0, 2.0}, {4.0, 8.0}};
		double r = 0.6;  //roughness
		double d = 1.0;	//displacement
		double end[][] = nextIter(start, d);

		//Key loop
		for(int i = 1; i < 9; i++)
		{
			d = d*Math.pow(2, -r);
			end = nextIter(end, d);
		}

		//Fix the matrix so we can get a decent ppm out of it
		//Walk through the matrix to find the minimum.
		//Make 0 minimum (add minimum to everything)
		//find out the range of values and multiply everything so that it fits in 0-2^16.
		//Make them integeres
		//Write out to ppm
	}

	//nextIter takes a (2^n + 1)*(2^n + 1) square matrix,
	//and returns a (2^(n+1) + 1)*(2^(n+1) + 1) matrix.
	public static double[][] nextIter (double in[][], double displace)
	{
		double d = displace;
		 int size = in[0].length;
		 int newLength = 2*size - 1;
		 double result [][] = new double[newLength][newLength];
		 double rand;

		 //First, fill the new matrix with the old matrix data put in the right place
		 //nested loop moving he old data to the rightplace


		 //For each 3x3 submatrix, use the formulas to fill in the 5 missing values.
		 //After filling in the new matrix, return it.
		 return result;
	}
}
