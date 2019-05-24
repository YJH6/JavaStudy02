package org.dao;

import java.sql.*;
import java.util.Scanner;

public class Register {
    public int register(String username,String password){
        String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";//这com是特定的
        //数据库连接的地址
        String URL = "jdbc:mysql://localhost:3306/yjh?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";//mysql8的坑
        //用户名
        String USER_NAME = "root";
        //密码
        String PASSWORD = "yu191148912";
        //加载驱动
        Connection connection=null;
        Statement statement=null;
        ResultSet resultSet=null;
        try {
            Class.forName(DRIVER_NAME);
            //获得连接(Java连接mysql数据库)
            connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
            //发生sql,执行语句
            statement = connection.createStatement();
            String inputSql="INSERT INTO yjh.user SET username = '"+username+"',password = '"+password+"'";

            int flag = statement.executeUpdate(inputSql);

            String qureySql = "SELECT count(*) FROM yjh.user WHERE username = '"+username+"' AND password = '"+password+"'";

            resultSet = statement.executeQuery(qureySql);
            int count = -1;
            if(resultSet.next()) {
                count = resultSet.getInt(1);
            }
            return count;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
            return -1;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } catch (Exception e){
            e.printStackTrace();
            return -1;
        }
        finally{
            try{
                if(resultSet!=null) resultSet.close();
                if(statement!=null) statement.close();
                if(connection!=null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
