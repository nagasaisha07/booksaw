package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Service.AdminService;

@RestController
@RequestMapping("/")

public class AdminController {
    @Autowired
    private AdminService adminService;
     
    @GetMapping("admin.jsp")
    @DeleteMapping("/delete/{adminId}")
    public ResponseEntity<String> deleteAdmin(@PathVariable Long adminId) {
        adminService.deleteAdminById(adminId);
        return ResponseEntity.ok("Admin deleted successfully");
    }
}
