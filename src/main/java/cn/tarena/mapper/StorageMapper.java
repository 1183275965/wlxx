package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Storage;

public interface StorageMapper {

	public List<Storage> findStorage();

	public Storage findOne(String storageId);

	@Update("update ruku set danhao=#{storageNum},kuname=#{storageName},car=#{storageCar},info=#{storageInfo},appuser=#{storageAppuser},date=#{date} where id=#{storageId}")
	public void update(Storage storage);

	@Delete("delete from ruku where id=#{storageId}")
	public void delete(String storageId);

	@Insert("insert into ruku(id,danhao,kuname,info,appuser,date,car) values(#{storageId},#{storageNum},#{storageName},#{storageInfo},#{storageAppuser},#{date},#{storageCar})")
	public void createRuku(Storage storage);

	public List<Storage> findruku(@Param("number")String number);
	
	
}
