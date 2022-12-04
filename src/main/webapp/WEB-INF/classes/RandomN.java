package CT;
import java.util.Random;
public class RandomN

{
		public static int get() 
			{
		Random randomGenerator = new Random();
		int randomInt=0;
		Boolean cond=true;
		randomInt = randomGenerator.nextInt(10000000);
		return randomInt;

			}
}