package vn.edu.iuh.fit.trotot_terraform_sv.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import vn.edu.iuh.fit.trotot_terraform_sv.models.ApiResponse;

@RestController
public class DemoController {

    @GetMapping
    public ApiResponse status() {
        return new ApiResponse(200, "Service Trọ Tốt Backend đang hoạt động. Đây là Demo Terraform");
    }
}
