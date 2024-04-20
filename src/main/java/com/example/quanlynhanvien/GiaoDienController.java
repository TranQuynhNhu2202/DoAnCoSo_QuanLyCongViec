package com.example.quanlynhanvien;


import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;


import java.net.URL;
import java.util.ResourceBundle;

public class GiaoDienController implements Initializable {

    @FXML
    private TextField email;
    @FXML
    private ImageView password;
    @FXML
    private Button login;
    @FXML
    private Button signup;

    private TextField tf_email;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
