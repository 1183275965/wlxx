package cn.tarena.mapper;

import org.apache.ibatis.annotations.Param;

public interface PayMapper {

	void changePaystate(@Param("r6_Order")String r6_Order, @Param("i")int i);

}
