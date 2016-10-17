import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2016/8/26.
 */
public class date {
    public static void main(String[] args) {
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式


        String hehe = dateFormat.format( now );
        System.out.println(hehe);
    }
}
