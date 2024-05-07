package com.example.DressShop.Controllers;

import com.example.DressShop.Models.Products;
import com.example.DressShop.Repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    private ProductRepository _productRepository;

    @GetMapping("/")
    public String mainPage(Model model) {
        model.addAttribute("products", _productRepository.findAll());
        return "index";
    }
}
