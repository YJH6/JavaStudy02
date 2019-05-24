package org.dao;

import java.sql.*;

public class Retrieve {

    public String retrieve(String username) {
        String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";//这com是特定的
        //数据库连接的地址
        String URL = "jdbc:mysql://localhost:3306/yjh?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";//mysql8的坑
        //用户名
        String USER_NAME = "root";
        //密码
        String PASSWORD = "yu191148912";
        //加载驱动
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String name = null;
        try {
            Class.forName(DRIVER_NAME);
            //获得连接(Java连接mysql数据库)
            connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
            //发生sql,执行语句
            statement = connection.createStatement();
            String nouser = "用户名不存在";
            String qureySql = "SELECT * FROM yjh.user";
            resultSet = statement.executeQuery(qureySql);
            if(resultSet!=null){
                while(resultSet.next()) {
                    name = resultSet.getString("username");
                    String pwd = resultSet.getString("password");
                    if(name.equals(username))
                    {
                        return "用户"+username+"的密码为:"+pwd;
                    }
                }
            }
            return nouser;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return "-1";
        } catch (SQLException e) {
            e.printStackTrace();
            return "-2";
        } catch (Exception e) {
            e.printStackTrace();
            return "-3";
        } finally {
            try {
                if (resultSet != null) statement.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
