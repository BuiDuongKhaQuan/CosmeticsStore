package qht.shopmypham.com.vn.been;

import org.jdbi.v3.core.Jdbi;
import qht.shopmypham.com.vn.model.Account;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public class Log extends AbBean implements Serializable {
    int id;
    int level;
    String src;
    Account userId;

    String content;
    Date creatAt;
    int status;
    String ip;

    static Map<Integer, String> levelMapping = new HashMap<>();

    static {
        levelMapping.put(0, "INFO");
        levelMapping.put(1, "ALERT");
        levelMapping.put(2, "WARNING");
        levelMapping.put(3, "DANGER");
    }

   public static int INFO = 0;
    public static int ALERT = 1;
    public static int WARNING = 2;
    public static int DANGER = 3;

    public Log() {
    }

    public Log(int level, Account userId, String src, String content, Date creatAt, int status,String ip) {
        this.level = level;
        this.src = src;
        this.userId = userId;
        this.content = content;
        this.creatAt = creatAt;
        this.status = status;
        this.ip = ip;
    }
    public Log(int level, Account userId, String src, String content, int status, String ip) {
        this.level = level;
        this.src = src;
        this.userId = userId;
        this.content = content;
        this.status = status;
        this.ip = ip;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getLevelWithName() {
        return levelMapping.get(levelMapping.containsKey(this.level) ? this.level : 0);
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatAt() {
        return creatAt;
    }

    public void setCreatAt(Date creatAt) {
        this.creatAt = creatAt;
    }

    public int getStatus() {
        return status;
    }


    public void setStatus(int status) {
        this.status = status;
    }
    public String getIp() {
        return ip;
    }


    public void setIp(String ip) {
        this.ip = ip;
    }

    public Account getUserId() {
        return userId;
    }

    public void setUserId(Account userId) {
        this.userId = userId;
    }

    public boolean insert(Jdbi db){
        Integer i = db.withHandle(handle ->
                handle.execute("INSERT INTO log(`level`, `user`, src, content, createAt, `status`,`ip`)  VALUES(?,?,?,?,NOW(),?,?)",
                        this.level, this.getUserId() == null?null:this.userId.getIdA(), this.src, this.content, this.status, this.ip)
        );
        return i==1;
    }
}
