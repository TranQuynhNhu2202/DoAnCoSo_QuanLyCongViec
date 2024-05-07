package com.example.quanlynhanvien;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class GDCV_ChuathuchienController implements Initializable {
    @FXML
    private Button bt_Noidungcv;

    @FXML
    private Button bt_xacnhan;

    @FXML
    private TableColumn<?, ?> colum_Hannop;

    @FXML
    private TableColumn<?, ?> colum_IDcongviec;

    @FXML
    private TableColumn<?, ?> colum_congviec;

    @FXML
    private TableView<?> table_taca;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        bt_xacnhan.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {

            }
        });

    }
}
