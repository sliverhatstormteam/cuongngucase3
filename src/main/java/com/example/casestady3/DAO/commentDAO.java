package com.example.casestady3.DAO;

import com.example.casestady3.DAO.ConnectionMySql;
import com.example.casestady3.model.Bill;
import com.example.casestady3.model.CommentHihi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class commentDAO {
    static Connection connection = ConnectionMySql.getConnection();

    public static List<CommentHihi> getCommentById() {
        List<CommentHihi> comments = new ArrayList<CommentHihi>();
        String sql = "Select comment.id,comment.content,comment.productID,user.username,user.img from comment join user on user.id = comment.id ";
        Connection connection = ConnectionMySql.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int userID = resultSet.getInt("id");
                String content = resultSet.getString("content");
                int productID = resultSet.getInt("productID");
                String userName = resultSet.getString("userName");
                String img = resultSet.getString("img");
                comments.add(new CommentHihi(userID, content,productID,userName,img));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return comments;
    }
    public static boolean saveComment(CommentHihi commentHihi) {
        String sql = "insert into comment(id,content,productID) value (?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, commentHihi.getUserId());
            preparedStatement.setString(2, commentHihi.getContent());
            preparedStatement.setInt(3, commentHihi.getProductID());

            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
