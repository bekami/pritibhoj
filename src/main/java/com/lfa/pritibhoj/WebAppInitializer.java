/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pritibhoj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @author utsi
 */
@SpringBootApplication
@EnableAutoConfiguration
public class WebAppInitializer {
    
    public static void main(String[] args){
        SpringApplication.run(WebAppInitializer.class, args);
    }
}
