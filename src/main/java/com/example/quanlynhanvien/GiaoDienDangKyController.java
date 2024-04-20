package com.example.quanlynhanvien;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

public class GiaoDienDangKyController implements Initializable {
    @FXML
    private TextField tf_fullname;
    @FXML
    private TextField tf_mail;

    @FXML
    private TextField tf_password;
    @FXML
    private Button bt_signup;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
