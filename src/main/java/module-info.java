module com.example.quanlynhanvien {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.example.quanlynhanvien to javafx.fxml;
    exports com.example.quanlynhanvien;
}