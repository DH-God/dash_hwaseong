package com.clamos.dash_hwaseong.service;

import java.util.List;
import java.util.Map;

public interface DataService {
    List<Map<String, String>> select_welfare_map() throws Exception;
    List<Map<String, String>> select_public_facilities_excel() throws Exception;
    List<Map<String, String>> select_public_facilities_col() throws Exception;
}
