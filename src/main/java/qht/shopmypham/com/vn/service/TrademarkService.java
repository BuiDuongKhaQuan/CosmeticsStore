package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.model.Trademark;

import java.util.List;
import java.util.stream.Collectors;

public class TrademarkService {

    public static Trademark getTrademarkByIdT(String idTrademark) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM trademark where idTrademark = ?")
                        .bind(0, idTrademark)
                        .mapToBean(Trademark.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }
    public static List<Trademark> getTrademarkAll() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM trademark ")
                        .mapToBean(Trademark.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
    public static void editTrademarkById(String idTrademark, String logo, String name, String address, String phone, String status) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update trademark set logo = ?,name = ?,address = ?,phone = ?, status = ? where idTrademark = ?")
                        .bind(0, logo)
                        .bind(1, name)
                        .bind(2, address)
                        .bind(3, phone)
                        .bind(4, status)
                        .bind(5, idTrademark)
                        .execute()
        );
    }

    public static void addTrademark(String logo, String name, String address, String phone,String status) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into trademark(logo,name,address,phone, status) values (?,?,?,?,?)")
                        .bind(0, logo)
                        .bind(1, name)
                        .bind(2, address)
                        .bind(3, phone)
                        .bind(4, status)
                        .execute()
        );
    }
    public static void addImageByIdT(String idT, String logo) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into images(idTrademark,logo) VALUES (?,?)")
                        .bind(0, idT)
                        .bind(1, logo)
                        .execute()
        );

    }
    public static void deleteTrademarkById(String idTrademark) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from trademark where idTrademark = ?")
                        .bind(0, idTrademark)
                        .execute()
        );
    }
    public static Trademark getTrademark(String idT) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM trademark WHERE idTrademark = ?")
                        .bind(0, idT)
                        .mapToBean(Trademark.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

}
