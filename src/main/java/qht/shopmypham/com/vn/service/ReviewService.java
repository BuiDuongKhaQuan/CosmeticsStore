package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Review;

import java.util.List;
import java.util.stream.Collectors;

public class ReviewService {
    public static void addReview(String idP, String idA, String information, String star, String date) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into review(idP,idA,infomation,star, date) VALUES (?,?,?,?,?)")
                        .bind(0, idP)
                        .bind(1, idA)
                        .bind(2, information)
                        .bind(3, star)
                        .bind(4, date)
                        .execute()
        );
    }

    public static List<Review> getAllReviewByIdP(String idP) {
       return JDBiConnector.me().withHandle(h ->
                h.createQuery("select * from review where idP = ? ")
                        .bind(0, idP)
                        .mapToBean(Review.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
    public static List<Review> getAllReview() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("select * from review")
                        .mapToBean(Review.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
    public static List<Review> getReviewByIdName(String idP) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("select a.user, r.infomation from review r join Account a on r.idA = a.idA where idP =?")
                        .bind(0,idP)
                        .mapToBean(Review.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }


}
