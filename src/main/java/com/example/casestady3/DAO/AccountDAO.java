package com.example.casestady3.DAO;

import com.example.casestady3.model.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
    private Connection connection = ConnectionMySql.getConnection();

    public Account findAccountById(int id) {
        String sql = "select * from user where id=" + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            String phone = resultSet.getString("phone");
            String img = resultSet.getString("img");
            return new Account(id, username, password, email, address, phone, img);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Account checklogin(String email, String password) {
        String sql = "select * from user where email=? and password=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int id = resultSet.getInt("id");
            String img = resultSet.getString("img");
            String username = resultSet.getString("username");
            String address = resultSet.getString("address");
            String phone = resultSet.getString("phone");
            return new Account(id, username, password, email, address, phone, img);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Account> getAllAccount() {
        List<Account> accounts = new ArrayList<>();
        String sql = "Select * from user";
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                String img = resultSet.getString("img");

                accounts.add(new Account(id, username, password, email, address, phone, img));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return accounts;
    }

    public boolean editAccount(Account account) {
        String sql = "update user set password=?, username=?,  email=?, address=?, phone=?, img=? where id=?";
        Connection connection = ConnectionMySql.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(7, account.getId());
            preparedStatement.setString(2, account.getUsername());
            preparedStatement.setString(1, account.getPassword());
            preparedStatement.setString(3, account.getEmail());
            preparedStatement.setString(4, account.getAddress());
            preparedStatement.setString(5, account.getPhone());
            preparedStatement.setString(6, account.getImg());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void deleteAccount(int id) {
        String sql = "delete FROM user where id = " + id;
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean save(Account account) {
        String sql = "INSERT INTO user (`username`, `password`, `Email`, `address`, `phone`, `img`) VALUES (?, ?, ?, ?, ?, ?);";
        Connection connection = ConnectionMySql.getConnection();
        try {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, account.getUsername());
                preparedStatement.setString(2, account.getPassword());
                preparedStatement.setString(3, account.getEmail());
                preparedStatement.setString(4, account.getAddress());
                preparedStatement.setString(5, account.getPhone());
                preparedStatement.setString(6, account.getImg());
                preparedStatement.execute();
                return true;
            } catch (SQLIntegrityConstraintViolationException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
