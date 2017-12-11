package org.wenrong.kongfu.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.wenrong.kongfu.pojo.Memu;
import org.wenrong.kongfu.pojo.MemuExample;

public interface MemuMapper {
    int countByExample(MemuExample example);

    int deleteByExample(MemuExample example);

    int deleteByPrimaryKey(String memuid);

    int insert(Memu record);

    int insertSelective(Memu record);

    List<Memu> selectByExample(MemuExample example);

    Memu selectByPrimaryKey(String memuid);

    int updateByExampleSelective(@Param("record") Memu record, @Param("example") MemuExample example);

    int updateByExample(@Param("record") Memu record, @Param("example") MemuExample example);

    int updateByPrimaryKeySelective(Memu record);

    int updateByPrimaryKey(Memu record);
}