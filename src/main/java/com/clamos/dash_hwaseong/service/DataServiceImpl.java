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
    public List<Map<String, String>> select_public_facilities() {
        List<Map<String, String>> public_facilities;
        public_facilities = dataDAO.select_public_facilities();
        return public_facilities;
    }
}
