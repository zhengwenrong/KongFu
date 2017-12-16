package org.wenrong.kongfu.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.wenrong.kongfu.pojo.Orderitem;
import org.wenrong.kongfu.pojo.OrderitemExample;

public interface OrderitemMapper {
    int countByExample(OrderitemExample example);

    int deleteByExample(OrderitemExample example);

    int insert(Orderitem record);

    int insertSelective(Orderitem record);

    List<Orderitem> selectByExample(OrderitemExample example);

    int updateByExampleSelective(@Param("record") Orderitem record, @Param("example") OrderitemExample example);

    int updateByExample(@Param("record") Orderitem record, @Param("example") OrderitemExample example);
}