package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBUtil {
    private String driver;
    private String url;
    private String username;
    private String password;
    private Connection connection;
    private PreparedStatement preparedStatement;

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public DBUtil() {
        driver = "com.mysql.cj.jdbc.Driver";
        url = "jdbc:mysql://localhost:3306/spms?characterEncoding=utf8&serverTimezone=UTC&useSSL=false";
        username = "root";
        password = "123";
    }

    //加载驱动，得到连接对象
    private void init() {
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void close() {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private void setParams(String[] params) {
        if (params != null) {
            for (int i = 0; i <= params.length; i++) {
                try {
                    preparedStatement.setString(i + 1, params[i]);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public int update(String sql, String[] params) {
        int result = 0;
        init();
        try {
            preparedStatement = connection.prepareStatement(sql);
            setParams(params);
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return result;
    }

    public int update(String sql) {
        return update(sql, null);
    }

    public List<Map<String, String>> getList(String sql, String[] params) {
        List<Map<String, String>> list = null;// 定义保存查询结果的集合对象
        init();
        try {
            preparedStatement = connection.prepareStatement(sql);
            setParams(params);
            ResultSet rs = preparedStatement.executeQuery();
            list = getListFromRS(rs);// 根据RS得到list
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    public List<Map<String, String>> getList(String sql) {
        return getList(sql, null);
    }

    public Map<String, String> getMap(String sql, String[] params) {
        Map<String, String> m = null;
        List<Map<String, String>> l = getList(sql, params);
        if (l != null && l.size() != 0) {
            m = (Map<String, String>) (l.get(0));
        }
        return m;
    }

    public Map<String, String> getMap(String sql) {
        return getMap(sql, null);
    }

    //将结果封装程一个List
    private List<Map<String, String>> getListFromRS(ResultSet rs) throws SQLException {
        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        // 获取元数据
        ResultSetMetaData rsmd = rs.getMetaData();
        while (rs.next()) {
            Map<String, String> m = new HashMap<String, String>();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                // 获取当前行第i列的列名
                String colName = rsmd.getColumnLabel(i);
                String s = rs.getString(colName);
                if (s != null) {
                    m.put(colName, s);
                }
            }
            list.add(m);
        }
        return list;
    }

    //将Map对象转换为Object数组
    public Object[] getObjectArrayFromMap(Map map, String key) {
        String[] keys = key.split(",");
        Object[] tmp = new Object[keys.length];
        for (int i = 0; i < keys.length; i++) {
            tmp[i] = map.get(keys[i].trim());
        }
        return tmp;
    }
}
