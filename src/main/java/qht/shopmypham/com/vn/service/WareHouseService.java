package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.model.WareHouse;

import java.util.List;
import java.util.stream.Collectors;

public class WareHouseService {
    public static List<Product> inventoryProduct() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT p.* from product p join warehouse w on p.idP = w.idP WHERE p.idP  not in (SELECT idP from listproductbycheckout)AND `status`=1 and year(w.dateinput)=2022 ")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    // sp cần nhập kho
    public static List<WareHouse> warehouseProduct() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * from warehouse where quantity < 100")
                    .mapToBean(WareHouse.class)
                    .stream().collect(Collectors.toList());
        });
    }

    // sp không dc bán  trong năm
    public static List<Product> unsoldProduct() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT p.* FROM product p join  warehouse w on p.idP=w.idP where status ='0' and YEAR(w.dateInput)=2022")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<WareHouse> soldout() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT w.* FROM `warehouse` w inner join product p on w.idP = p.idP inner join listproductbycheckout l on p.idP = l.idP \n" +
                            "GROUP BY w.idP \n" +
                            "HAVING sum(l.quantity)>= sum(w.quantityInput)/200")
                    .mapToBean(WareHouse.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<WareHouse> getAll() {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * from warehouse")
                    .mapToBean(WareHouse.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static WareHouse getWareHouse(String id) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * from warehouse where idP = ?")
                    .bind(0, id)
                    .mapToBean(WareHouse.class)
                    .stream().collect(Collectors.toList()).get(0);
        });
    }

    public static void addWareHouse(String quantity, String dateInput, String quantityInput, String name_product, String idP, String idC, String idT) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into warehouse(quantity, dateInput,quantityInput, idP) values (?,?,?,?)")
                        .bind(0, quantity)
                        .bind(1, dateInput)
                        .bind(2, quantityInput)
                        .bind(3, idP)
                        .execute()
        );
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into product(name, idP, idC, idT) values (?,?,?,?)")
                        .bind(0, name_product)
                        .bind(1, idP)
                        .bind(2, idC)
                        .bind(3, idT)
                        .execute()
        );
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into images(idP,img) VALUES (?,?)")
                        .bind(0, idP)
                        .bind(1, "")
                        .execute()
        );
    }

    public static void deleteWareHouse(String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from warehouse where idP = ? ")
                        .bind(0, id)
                        .execute()
        );
    }

    public static void editWareHouse(String quantity, String dateInput, String quantityInput, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update warehouse set quantity = ?, dateInput= ?,quantityInput= ? where idP = ?")
                        .bind(0, quantity)
                        .bind(1, dateInput)
                        .bind(2, quantityInput)
                        .bind(3, id)
                        .execute()
        );
    }
}
