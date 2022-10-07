package com.clamos.dash_hwaseong.service;

import com.clamos.dash_hwaseong.dto.WelfareMapDto;

import java.util.List;
import java.util.Map;

public interface DataService {
    List<Map<String, String>> select_welfare_map() throws Exception;

}
