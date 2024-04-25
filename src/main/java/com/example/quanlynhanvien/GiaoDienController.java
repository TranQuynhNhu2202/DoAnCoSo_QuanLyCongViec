package com.example.quanlynhanvien;


import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.layout.AnchorPane;


import java.io.IOException;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class GiaoDienController implements Initializable {

    @FXML
    private TextField email;
    @FXML
    private Button login;
    @FXML
    private Button signup;
    @FXML
    private PasswordField matkhau;
    @FXML
    private AnchorPane idanchor;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        login.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                String Email = email.getText();
                String passWord = matkhau.getText();
                if(Email != "" && passWord != "") {
                    ConnectDB connectDB = new ConnectDB();
                    String query ="SELECT `Email` FROM `taikhoan` WHERE Email='"+Email+"' and password='"+passWord+"'";
                    boolean check = false;
                    try {
                        ResultSet datalogin = connectDB.getStmt().executeQuery(query);
                        check = datalogin.next();
                    } catch (SQLException e) {
                        throw new RuntimeException(e);

                    }

                    if(check == true) {
                        try {
                            DBUtils.changeScene(actionEvent, "Gocc.fxml", "Trang quản lý", 500, 800);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } else {
                        DBUtils.printAlertMsg("Thông báo", "Không đúng thông tin đăng nhập!");
                    }
                }
            }
        });

    }
}
