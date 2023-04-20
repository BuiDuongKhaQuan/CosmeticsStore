package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Account;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class LoginService {

    public static Account getAccout(String user, String pass) {
        List<Account> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE user = ? and pass =?")
                        .bind(0, user).bind(1, pass)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }
    public static Account getAccoutFacebook(String idFace) {
        List<Account> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE idFacebook =?")
                        .bind(0, idFace)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }
    public static Account getAccoutGoogle(String idGoogle) {
        List<Account> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE idGoogle =?")
                        .bind(0, idGoogle)

                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }
    public static Account checkUser(String user) {
        List<Account> listAccount = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE user = ?")
                        .bind(0, user)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (listAccount.size() == 0) return null;
        return listAccount.get(0);
    }
    public static Account checkIdfacebook(String idFace) {
        List<Account> listAccount = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE idFacebook = ?")
                        .bind(0, idFace)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (listAccount.size() == 0) return null;
        return listAccount.get(0);
    }
    public static void signUp(String user, String pass, String email) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO account(user,pass,fullName,email,address,phone,img," +
                                "status,orderManage,infoCompanyManage,productManage,accountManage,blogManage,contactManage,subscibeManage,faqsManage)" +
                                "VALUES (?,?,null,?,null,null,null,1,0,0,0,0,0,0,0,0)")
                        .bind(0, user).bind(1, pass).bind(2,email)
                        .execute()
        );
    }
    public static void signUpFacebook(String idFacebook, String nameFacebook) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO account(user,pass,fullName,email,address,phone,img,idFacebook," +
                                "status,orderManage,infoCompanyManage,productManage,accountManage,blogManage,contactManage,subscibeManage,faqsManage)" +
                                "VALUES (null,null,?,null,null,null,null,?,1,0,0,0,0,0,0,0,0)")
                        .bind(0, nameFacebook).bind(1, idFacebook)
                        .execute()
        );
    }
    public static void signUpGoogle(String idGoogle, String email) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO account(user,pass,fullName,email,address,phone,img,idGoogle," +
                                "status,orderManage,infoCompanyManage,productManage,accountManage,blogManage,contactManage,subscibeManage,faqsManage)" +
                                "VALUES (null,null,null,?,null,null,null,?,1,0,0,0,0,0,0,0,0)")
                        .bind(0, email)
                        .bind(1, idGoogle)
                        .execute()
        );
    }
    public static Account checkIdGoogle(String idGoogle) {
        List<Account> listAccount = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE idGoogle = ?")
                        .bind(0, idGoogle)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (listAccount.size() == 0) return null;
        return listAccount.get(0);
    }
    public static void main(String[] args) {
        System.out.println(checkUser("tran111"));
//        "INSERT INTO account(user,pass,fullName,email,address,phone,img,isadmin) " +
//                "VALUES (?,?,null,null,null,null,null,2)")
    }

}
