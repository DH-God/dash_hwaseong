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
    public String welfare_map(Model model) throws Exception {
        List<Map<String, String>> data = dataService.select_welfare_map();
        model.addAttribute("data", data);
        return "/welfare_map";
    }

    @GetMapping("/public_facilities")
    public String public_facilities(Model model) throws Exception {
        List<Map<String, String>> excel_data = dataService.select_public_facilities_excel();
        List<Map<String, String>> col_data = dataService.select_public_facilities_col();

        model.addAttribute("excel_data", excel_data);
        model.addAttribute("col_data", col_data);
        return "/public_facilities";
    }
}
