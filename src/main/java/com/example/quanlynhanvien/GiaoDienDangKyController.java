package com.example.quanlynhanvien;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

public class GiaoDienDangKyController implements Initializable {
    @FXML
    private TextField tf_fullname;
    @FXML
    private TextField tf_mail;

    @FXML
    private PasswordField tf_password;
    @FXML
    private Button bt_signup;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        bt_signup.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                String tendangnhap = tf_fullname.getText();
                String Email = tf_mail.getText();
                String password = tf_password.getText();
                if (tendangnhap != "" && Email != "" && password != ""){
                    
                }



            }
        });
    }
}
