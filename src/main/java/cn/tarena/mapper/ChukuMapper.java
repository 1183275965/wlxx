package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Chuku;

public interface ChukuMapper {

	public List<Chuku> findChuku();

	public Chuku findone(String chukuId);

	@Update("update chuku set danhao=#{number},car=#{car},kuname=#{name},info=#{chukuInfo},appuser=#{appuser},date=#{date},tokuname=#{destination} where id=#{chukuId}")
	public void updatechuku(Chuku chuku);

	@Delete("delete from chuku where id=#{chukuId}")
	public void deletechuku(String chukuId);

	public List<Chuku> findList(@Param("number")String number);

	@Insert("insert into chuku(id,danhao,kuname,info,appuser,date,car,tokuname) values(#{chukuId},#{number},#{name},#{destination},#{appuser},#{date},#{car},#{chukuInfo})")
	public void createChuku(Chuku chuku);
}
