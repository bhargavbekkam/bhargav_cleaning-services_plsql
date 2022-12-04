
package com.example.projectcleaning;
import java.util.*;
import java.text.*;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;
import java.time.temporal.WeekFields;
import java.time.temporal.*;

public class DateDemo {

   public static String getTime() {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("YYYY-MM-dd");
      String s=ft.format(dNow);

	  return s;
}

	public static int getWeek()throws Exception 
	{
		Calendar calendar = new GregorianCalendar();
		Date trialTime = new Date();   
		calendar.setTime(trialTime);     

		int i=calendar.get(Calendar.WEEK_OF_YEAR);
		return i;

}
	public static int getWeek(String input)throws Exception 
	{
//		String input = "20/10/20";
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy/M/dd");   // Define formatting pattern to match your input string.
    LocalDate date = LocalDate.parse(input, formatter);                     // Parse string into a `LocalDate` object.

    WeekFields wf = WeekFields.of(Locale.getDefault()) ;                    // Use week fields appropriate to your locale. People in different places define a week and week-number differently, such as starting on a Monday or a Sunday, and so on.
    TemporalField weekNum = wf.weekOfWeekBasedYear();                       
    int week = Integer.parseInt(String.format("%02d",date.get(weekNum)));   // Using that locale�s definition of week number, determine the week-number for this particular `LocalDate` value.

    return week;
}

   public static String getMonth() {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("MM");
      String s=ft.format(dNow);
	  return s;
}
   public static String getMonth(String date) {
	
	return date.split("-")[1];
}

	public static void main(String[] args)throws Exception 
	{
		System.out.println("Week number:" +DateDemo.getWeek());
		System.out.println("Wee----k number:" +DateDemo.getWeek("ss"));
		System.out.println("M:" +DateDemo.getMonth());
			System.out.println("T:" +DateDemo.getTime());
	}
}
