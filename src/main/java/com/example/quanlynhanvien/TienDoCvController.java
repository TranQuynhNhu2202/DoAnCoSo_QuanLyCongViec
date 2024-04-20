package com.example.quanlynhanvien;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.layout.AnchorPane;

import java.net.URL;
import java.util.ResourceBundle;

public class TienDoCvController implements Initializable {
    @FXML
    private AnchorPane acp_TienDo;

    @FXML
    private Label lb_PhanTramCV;

    @FXML
    private Label lb_ngaybatdau;

    @FXML
    private Label lb_ngayketthuc;

    @FXML
    private Label lb_nguoithuchien;

    @FXML
    private Label lb_taocosodulieu;

    @FXML
    private Label lb_trangthai;

    @FXML
    private TableView<?> table_congviec;

    @FXML
    private TableColumn<?, ?> tableclum_congviec;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
