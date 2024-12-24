package com.example.quanlynhanvien;


import com.example.quanlynhanvien.DAO.MessDAO;
import com.example.quanlynhanvien.DAO.NhanvienDAO;
import com.example.quanlynhanvien.Get.GetInfo;
import com.example.quanlynhanvien.Model.NhanVien;
import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;

import java.io.*;
import java.net.Socket;
import java.net.URL;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;

public class GiaoDienNVChatController implements Initializable {
    String TenNV = null;
    Socket socket = null;
    @FXML
    private Button bt_Send;

    @FXML
    private Label lb_TenNguoiNhan;

    @FXML
    private ListView<String> lv_DanhSachNguoiNhan;

    @FXML
    private ListView<String> lv_hienThiTinNhan;

    @FXML
    private TextArea tf_TinNhanMoi;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        //Lấy thông tin nhân viên sử dụng
        NhanVien nv = NhanvienDAO.getInfoUser(GetInfo.getEmail());
        TenNV = nv.getHovaten();

        //Lấy thông tin nv
        ObservableList<String> listNV = NhanvienDAO.getDanhSachTenNhanVien();


        // ktra xem nv có được quyền nhắn tin không
        if(!listNV.contains(TenNV)){
            System.out.println(listNV);
            System.out.println(TenNV);
            System.out.println("Không tồn tại nhân viên");
            return;
        }
        // Load thông tin nhân viên
        lv_DanhSachNguoiNhan.getItems().addAll(listNV);

        try {
            //Khởi tạo kết nối
            socket = ConnectServer();

            // Tạo luồng đọc dữ liệu từ server với chuẩn UTF-8
            Thread readMess = new Thread(){
                @Override
                public void run(){
                    try {
                        BufferedReader reader = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
                        while (true){
                            String mess = reader.readLine();
                            Platform.runLater(() -> lv_hienThiTinNhan.getItems().add(mess));
                        }
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
            };
            readMess.start();


        } catch (IOException e) {
            System.out.println("Server bị lỗi kết nối!");
            throw new RuntimeException(e);
        }


        // set Even cho button gửi
        bt_Send.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                //Gửi dữ liệu lên server với chuẩn UTF-8
                BufferedWriter writerServer = null;
                try {
                    writerServer = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8"));
                    String mess = TenNV + ": " + tf_TinNhanMoi.getText();
                    try {
                        System.out.println("Client đã gửi :"+ mess);
                        writerServer.write(mess + "\n");
                        writerServer.flush();
                        tf_TinNhanMoi.clear();
                    } catch (IOException e) {
                        System.out.println("Lỗi gửi tập tin");
                        throw new RuntimeException(e);
                    }
                } catch (IOException e) {
                    DBUtils.printAlertMsg("Thông báo", "Lỗi kết Server");
                    throw new RuntimeException(e);
                }
            }
        });





        // load tin nhắn lên giao diện
//        List<String> data = null;
////        try {
////            data = MessDAO.getMessenger("groupAdmin");
////        } catch (SQLException e) {
////            throw new RuntimeException(e);
////        }
////        lv_hienThiTinNhan.getItems().addAll(data);


    }

    public static Socket ConnectServer() throws IOException {
        String IP = "localhost"; // địa chỉ ip máy chủ ipconfig
        int Port = 7749;
        Socket socket = new Socket(IP, Port);
        return socket;
    }


}

