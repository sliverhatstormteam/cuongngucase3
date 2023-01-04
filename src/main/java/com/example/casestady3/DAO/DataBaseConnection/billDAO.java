package com.example.casestady3.DAO.DataBaseConnection;


import com.example.casestady3.DAO.ConnectionMySql;
import com.example.casestady3.model.Bill;
import com.example.casestady3.model.BillDetail;
import com.example.casestady3.model.BillInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class billDAO {
    static Connection connection = ConnectionMySql.getConnection();

    public static List<Bill> getAll() {
        List<Bill> bills = new ArrayList<>();
        String sql = "Select * from bill";
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int billID = resultSet.getInt("billID");
                int id = resultSet.getInt("id");
                int productID = resultSet.getInt("productID");
                double total = resultSet.getInt("total");
                String datetime = resultSet.getString("datetime");
                bills.add(new Bill(billID, id,productID,total,datetime));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(bills);
        return bills;
    }
    public static List<BillInfo> getBillInfo() {
        List<BillInfo> billinfos = new ArrayList<>();
        String sql = "SELECT bill.billID, bill.id,user.username,bill.total,date   FROM fashiondb.bill join user on bill.id = user.id";
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int billID = resultSet.getInt("billID");
                int id = resultSet.getInt("id");
                String name= resultSet.getString("username");
                double total = resultSet.getInt("total");
                String datetime = resultSet.getString("date");
                billinfos.add(new BillInfo(billID, id,name,total,datetime));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(billinfos);
        return billinfos;
    }

    public static List<BillInfo> getBillInfoById(int idUser) {
        List<BillInfo> billinfos = new ArrayList<>();
        String sql = "SELECT bill.billID, bill.id,user.username,bill.total,date   FROM fashiondb.bill join user on bill.id = user.id where user.id ="+idUser;
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int billID = resultSet.getInt("billID");
                int id = resultSet.getInt("id");
                String name= resultSet.getString("username");
                double total = resultSet.getInt("total");
                String datetime = resultSet.getString("date");
                billinfos.add(new BillInfo(billID, id,name,total,datetime));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(billinfos);
        return billinfos;
    }
    public static boolean createBill(Bill bill) {
        String sql = "insert into bill(id, total) value (?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, bill.getUserID());
            preparedStatement.setDouble(2, bill.getTotal());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public static int getBillID() {
        List<Bill> bills = new ArrayList<>();
        String sql = "SELECT MAX(billID) as newBillID FROM bill;";
        Connection connection = ConnectionMySql.getConnection();
        int newBillID=0;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();

            newBillID = resultSet.getInt("newBillID");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(newBillID);
        return newBillID;
    }
}
