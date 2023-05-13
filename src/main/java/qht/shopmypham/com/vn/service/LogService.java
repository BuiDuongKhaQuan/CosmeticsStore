package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Log;
import java.util.List;
import java.util.stream.Collectors;

public class LogService {
    public static List<Log> getAllLog() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM log ")
                        .mapToBean(Log.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
    public static List<Log> getAllLogAction() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM log where `action` != 4 ")
                        .mapToBean(Log.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
    public static void addLog(int idA, int action, int level, String ip, String src, String content, String time) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO log( idA, action, level, ip, src, content, time)" +
                                " VALUES (?,?,?,?,?,?,?)")
                        .bind(0, idA)
                        .bind(1, action)
                        .bind(2,level)
                        .bind(3,ip)
                        .bind(4,src)
                        .bind(5,content)
                        .bind(6,time)
                        .execute()
        );
    }

    public static void main(String[] args) {
        System.out.println(getAllLogAction());
    }
}
