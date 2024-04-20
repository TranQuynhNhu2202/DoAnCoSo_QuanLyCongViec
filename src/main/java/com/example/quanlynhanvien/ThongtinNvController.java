package com.example.quanlynhanvien;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import java.net.URL;
import java.util.ResourceBundle;

public class ThongtinNvController implements Initializable {

    @FXML
    private Label chucvu;

    @FXML
    private TableColumn<?, ?> cot_Hoten;

    @FXML
    private TableColumn<?, ?> cot_ID;

    @FXML
    private Label diachi;

    @FXML
    private Label gioitinh;

    @FXML
    private Label gmail;

    @FXML
    private Label hoten;

    @FXML
    private Label id;

    @FXML
    private Label ngay_thamgia;

    @FXML
    private Label ngaysinh;

    @FXML
    private Label so_dienthoai;

    @FXML
    private Button them;

    @FXML
    private Button xoa;

    @FXML
    private TableView<?> table_Thongtin;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
