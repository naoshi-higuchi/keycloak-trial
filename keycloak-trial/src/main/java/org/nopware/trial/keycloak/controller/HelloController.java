package org.nopware.trial.keycloak.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
    
    @CrossOrigin("*")
    @RequestMapping(method = RequestMethod.GET)
    public String hello() {
        return "Hello World!";
    }
}