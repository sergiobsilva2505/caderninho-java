package br.com.sbs.caderninho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/receitas")
public class AnnotationController {

    @GetMapping
    public String findAll(Model model) {
        return "index";
    }
}
