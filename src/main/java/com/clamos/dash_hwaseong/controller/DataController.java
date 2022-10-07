package com.clamos.dash_hwaseong.controller;

import com.clamos.dash_hwaseong.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class DataController {
    @Autowired
    DataService dataService;

    @GetMapping("/welfare_map")
    public String population_status(Model model) throws Exception {
        List<Map<String, String>> data = dataService.select_welfare_map();
        model.addAttribute("data", data);
        System.out.println(model.getAttribute("data"));
//        System.out.println(data);
        return "/welfare_map";
    }
}
