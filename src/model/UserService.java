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

    public Map<String, String> getUserInfo(String username) {
        String sql = "select * from student where name=?";
        String[] params = new String[]{username};
        return dbUtil.getMap(sql, params);
    }

    public Map<String, String> getEnterInfoByName(String username) {
        String sql = "";
        String[] params = new String[]{username};
        return dbUtil.getMap(sql, params);
    }

    public Map<String, String> getStudentInfo(String id) {
        String sql = "select * from student where id=?";
        String[] params = new String[]{id};
        return dbUtil.getMap(sql, params);
    }

    public Integer addGrade(String stu_id, String grade) {
        String sql = "insert into score values(null,?,?)";
        String[] params = new String[]{stu_id, grade};
        return dbUtil.update(sql, params);
    }

    public Map<String, String> getStudentGrade(String stu_id) {
        String sql = "select * from score where stu_id=?";
        String[] params = new String[]{stu_id};
        return dbUtil.getMap(sql, params);
    }

    public Integer updateGrade(String stu_id, String grade) {
        String sql = "update score set grade=? where stu_id=?";
        String[] params = new String[]{grade, stu_id};
        return dbUtil.update(sql, params);
    }
}
