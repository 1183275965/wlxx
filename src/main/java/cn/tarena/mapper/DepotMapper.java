package cn.tarena.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.pojo.Depot;

public interface DepotMapper {

	public List<Depot> findDepot();

	@Update("update depot set depot_name=#{depotName},address=#{address},phone=#{phone},remarks=#{remarks} where depot_id=#{depotId}")
	public void update(Depot depot);

	@Delete("delete from depot where depot_id=#{depotId}")
	public void delete(String depotId);

	@Insert("insert into depot(depot_id,depot_name,address,phone,remarks) values(#{depotId},#{depotName},#{address},#{phone},#{remarks})")
	public void addKu(Depot depot);
	
	@Select("select * from depot where depot_id=#{depotId}")
	public Depot findone(String depotId);

	
	public List<Depot> findwd(@Param("name")String name);

	
}
