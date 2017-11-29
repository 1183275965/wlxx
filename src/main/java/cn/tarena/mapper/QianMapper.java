package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Qian;
import cn.tarena.pojo.Yundan;

public interface QianMapper {

	@Select("select * from qian")
	public List<Qian> findAll();
	
	@Select("select * from qian where id=#{id}")
	public Qian findOne(String id);

	@Delete("delete from qian where id=#{id}")
	public void delete(String id);

	@Insert("insert into qian (id,danhao,qname,qdate,jsr) values (#{id},#{danhao},#{qname},#{qdate},#{jsr})")
	public void save(Qian qian);
	
	@Update("update qian set danhao=#{danhao},qname=#{qname},qdate=#{qdate},jsr=#{jsr} where id=#{id}")
	public void update(Qian qian);
	
	@Select("select * from qian where danhao=#{danhao}")
	public Qian finddan(String danhao);
   
	@Select("select danhao from yundan")
	public List<Yundan> findYunid();
	
	
	
	

}
