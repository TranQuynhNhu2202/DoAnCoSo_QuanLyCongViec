package com.example.quanlynhanvien;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class ApplicationGiaoDien extends Application {
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(ApplicationGiaoDien.class.getResource("GiaoDien.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Đăng nhập!");
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}
