package model;

import java.util.Map;

public class UserService {
    private DBUtil dbUtil;

    public UserService() {
        dbUtil = new DBUtil();
    }

    public Map<String, String> getUserInfo(String username, String password) {
        String sql = "select * from user where username=? and password=?";
        String[] params = new String[]{username, password};
        return dbUtil.getMap(sql, params);
    }
}
