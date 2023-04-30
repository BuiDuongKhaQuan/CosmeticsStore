package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Home;
import qht.shopmypham.com.vn.model.Offer;
import qht.shopmypham.com.vn.model.Shop;

import java.util.List;
import java.util.stream.Collectors;

public class ShopService {
    public static Shop getShop() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM shop")
                        .mapToBean(Shop.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static void editShop(String idS, String shopName, String logo_header, String aboutShop, String address, String phone, String email,
                                String designerBy, String textInHelp) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update shop set  shopName=?,  aboutShop=?, logo_header=? ," +
                                "address=?,  phone=?,  email=?, designerBy=?,  textInHelp=? where idS = ?")
                        .bind(0, shopName)
                        .bind(1, aboutShop)
                        .bind(2, logo_header)
                        .bind(3, address)
                        .bind(4, phone)
                        .bind(5, email)
                        .bind(6, designerBy)
                        .bind(7, textInHelp)
                        .bind(8, idS)
                        .execute()
        );
    }

    public static void main(String[] args) {
        System.out.println(getShop());
    }
}
