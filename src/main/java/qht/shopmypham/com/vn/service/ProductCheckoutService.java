package qht.shopmypham.com.vn.service;


import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.ListProductByCheckOut;

import java.util.List;
import java.util.stream.Collectors;

public class ProductCheckoutService {
    public static void addProductToProductCheckout(String idCk, String idP, String quantity) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO listproductbycheckout(idCk,idP,quantity) " +
                                "VALUES (?,?,?)")
                        .bind(0, idCk)
                        .bind(1, idP)
                        .bind(2, quantity)
                        .execute()
        );
    }

    public static List<ListProductByCheckOut> getProductProductCheckout() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM listproductbycheckout ")
                    .mapToBean(ListProductByCheckOut.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<ListProductByCheckOut> getProductProductCheckoutByIdCk(String idCk) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * FROM listproductbycheckout where  idCk=?")
                    .bind(0, idCk)
                    .mapToBean(ListProductByCheckOut.class)
                    .stream().collect(Collectors.toList());
        });
    }
}
