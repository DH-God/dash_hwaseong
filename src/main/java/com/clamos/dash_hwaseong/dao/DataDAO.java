package com.clamos.dash_hwaseong.dao;

import com.clamos.dash_hwaseong.dto.WelfareMapDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface DataDAO {
    List<Map<String, String>> select_welfare_map();
}
