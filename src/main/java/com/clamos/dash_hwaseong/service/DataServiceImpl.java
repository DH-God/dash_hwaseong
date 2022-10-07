package com.clamos.dash_hwaseong.service;

import com.clamos.dash_hwaseong.dao.DataDAO;
import com.clamos.dash_hwaseong.dto.WelfareMapDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Map;

@Service
public class DataServiceImpl  implements DataService{

    @Autowired
    DataDAO dataDAO;

    @Override
    public List<Map<String, String>> select_welfare_map() throws Exception {
        List<Map<String, String>> welfare_map;
        welfare_map = dataDAO.select_welfare_map();
        return welfare_map;
    }
}
