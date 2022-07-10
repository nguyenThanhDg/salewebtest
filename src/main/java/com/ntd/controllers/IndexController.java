/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ntd.controllers;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(Model model){
        List<String> category = new ArrayList<>();
        category.add("dien thoai");
        category.add("may tinh");
        category.add("laptop");
        category.add("dien thoai");
        model.addAttribute("category", category);
        List<String> product = new ArrayList<>();
        product.add("Iphone 1");
        product.add("Iphone 2");
        product.add("Iphone 3");
        product.add("Iphone 4");
        product.add("Iphone 5");
        product.add("Iphone 6");
        product.add("Iphone 7");
        product.add("Iphone 8");
        model.addAttribute("category", category);
        model.addAttribute("product", product);
        return "index";
    }
}
