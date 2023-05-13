package qht.shopmypham.com.vn.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class DateUtil {
    public static String getDateNow() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm:ss a dd/MM/yyyy");
        Date currentDate = new Date();
        String formattedDate = dateFormat.format(currentDate);
        return formattedDate;
    }

    public static String customDateTimeFormat(Date date) {
        String pattern = "hh:mm:ss a dd/MM/yyyy";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        String formattedDate = formatter.format(date);
        System.out.println("Formatted Date: " + formattedDate);
        return formattedDate;
    }

    public static String between(String date) throws ParseException {
        String pattern = "hh:mm:ss a dd/MM/yyyy";
        LocalDateTime date1 = LocalDateTime.parse(date, DateTimeFormatter.ofPattern(pattern));
        LocalDateTime dateNow = LocalDateTime.parse(getDateNow(), DateTimeFormatter.ofPattern(pattern));
        Duration duration = Duration.between(date1, dateNow);
        long seconds = duration.getSeconds();
        String time = "";
        if (seconds < 60) return time = seconds + " giây";
        if (seconds > 60 && seconds / 60 < 60) return time = seconds / 60 + " phút";
        if (seconds / 60 > 60) return time = seconds / 3600 + " giờ " + (seconds / 60 - 60) + " phút";
        return time;
    }


    public static void main(String[] args) throws ParseException {
        String pattern = "hh:mm:ss a dd/MM/yyyy";

    }
}
