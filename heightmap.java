/**
 * @author Katrina Mehring
 * 
 * This is a program to create a heightmap for terrains in POVray
 *
 * Wish me luck..
 * */

public class HeightMap
{
	public static void main(String [] args)
	{
		//make an array? or something
		int map[513][513];
		int k = 9; //(2^k = height)

		map[0][0] = (int)(Math.random()*256);
		map[0][512] = (int)(Math.random()*256);
		map[512][0] = (int)(Math.random()*256);
		map[512][512] = (int)(Math.random()*256);

	}

	public static void midpoint(int a, int d)
	{
}
