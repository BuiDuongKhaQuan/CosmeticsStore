package qht.shopmypham.com.vn.db;

import qht.shopmypham.com.vn.been.AbBean;
import qht.shopmypham.com.vn.been.Log;


public class DB {
    private static DB install;
    public static DB me(){
        if (install==null) install = new DB();
        return install;
    }
    private DB(){

    }
    public boolean insert(AbBean bean){
        return bean.insert(JDBiConnector.me());
    }

//    public static void main(String[] args) {
//        Log log= new Log(Log.INFO,-1,"LOGIN FALSE","User ABC",0);
//        DB.me().insert(log);
//    }
}
