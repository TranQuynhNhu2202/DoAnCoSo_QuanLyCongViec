package com.example.quanlynhanvien;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.RadioButton;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ResourceBundle;

public class GiaoDienLiLichController implements Initializable {
    @FXML
    private Button bt_chinhSua;

    @FXML
    private ChoiceBox<?> cb_nam;

    @FXML
    private ChoiceBox<?> cb_namthamgia;

    @FXML
    private ChoiceBox<?> cb_ngay;

    @FXML
    private ChoiceBox<?> cb_ngaythamgia;

    @FXML
    private ChoiceBox<?> cb_thang;

    @FXML
    private ChoiceBox<?> cb_thangthamgia;

    @FXML
    private RadioButton rb_nu;

    @FXML
    private RadioButton rdb_nam;

    @FXML
    private TextField tf_diachi;

    @FXML
    private TextField tf_email;

    @FXML
    private TextField tf_hoten;

    @FXML
    private TextField tf_sdt;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
