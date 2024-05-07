package com.example.quanlynhanvien;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.net.URL;
import java.util.ResourceBundle;

public class GDCV_DangthuchienController implements Initializable {
    @FXML
    private Button bt_nopcongviec;

    @FXML
    private TableColumn<?, ?> colum_Hannop;

    @FXML
    private TableColumn<?, ?> colum_IDcongviec;

    @FXML
    private TableColumn<?, ?> colum_congviec;

    @FXML
    private TableView<?> table_taca;
    @FXML
    private Button bt_xemcongviec;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
