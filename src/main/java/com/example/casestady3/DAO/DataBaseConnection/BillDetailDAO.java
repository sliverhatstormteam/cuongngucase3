package com.example.casestady3.DAO.DataBaseConnection;

import com.example.casestady3.DAO.ConnectionMySql;
import com.example.casestady3.model.BillDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BillDetailDAO {
    static Connection connection = ConnectionMySql.getConnection();
    public static List<BillDetail> getBillDetail() {
        List<BillDetail> billDetails = new ArrayList<>();
        String sql = "SELECT *   FROM billdetail";
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int productID = resultSet.getInt("productID");
                int billID = resultSet.getInt("billID");
                int  amount= resultSet.getInt("amount");
                double price = resultSet.getInt("price");
                billDetails.add(new BillDetail(productID, billID,amount,price));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(billDetails);
        return billDetails;
    }
    public static boolean createBillDetail(BillDetail billDetail) {
        String sql = "insert into billdetail value (?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt   (1,billDetail.getBillID());
            preparedStatement.setInt   (2, billDetail.getProductID());
            preparedStatement.setInt   (3, billDetail.getAmount());
            preparedStatement.setDouble(4, billDetail.getPrice());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
