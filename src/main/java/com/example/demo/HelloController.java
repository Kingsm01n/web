package com.example.demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

@Controller
public class HelloController {

    private final static Logger LOG = LoggerFactory.getLogger(HelloController.class);

    @GetMapping("/1")
    public String hello1() {
        return "1";
    }

    @GetMapping("/2")
    public String hello2() {
        return "2";
    }

    @GetMapping("/3")
    public String hello3() {
        return "3";
    }

    @GetMapping("/3/save")
    public void hello3Receive(@RequestBody String innerHtml) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("innerHtml.txt"))) {
            writer.write(innerHtml);
        } catch (IOException e) {
            LOG.error(e.getMessage());
        }
    }
}
