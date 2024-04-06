module com.example.quanlynhanvien {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.example.quanlynhanvien to javafx.fxml;
    exports com.example.quanlynhanvien;
}