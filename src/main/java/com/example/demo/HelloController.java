package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

    @GetMapping("/1")
    public String hello1() {
        return "1";
    }
    @GetMapping("/2")
    public String hello2() {
        return "2";
    }
}
