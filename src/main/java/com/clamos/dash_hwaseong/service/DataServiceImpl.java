package com.clamos.dash_hwaseong.service;

import com.clamos.dash_hwaseong.dao.DataDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DataServiceImpl  implements DataService{

    @Autowired
    DataDAO dataDAO;

    @Override
    public List<Map<String, String>> select_welfare_map() {
        List<Map<String, String>> welfare_map;
        welfare_map = dataDAO.select_welfare_map();
        return welfare_map;
    }

    @Override
    public List<Map<String, String>> select_public_facilities_excel() {
        List<Map<String, String>> public_facilities_excel;
        public_facilities_excel = dataDAO.select_public_facilities_excel();
        return public_facilities_excel;
    }
    @Override
    public List<Map<String, String>> select_public_facilities_col() {
        List<Map<String, String>> public_facilities_col;
        public_facilities_col = dataDAO.select_public_facilities_col();
        return public_facilities_col;
    }
}
