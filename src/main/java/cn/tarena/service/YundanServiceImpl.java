package cn.tarena.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.mapper.YundanMapper;
import cn.tarena.pojo.Yundan;

@Service
public class YundanServiceImpl implements YundanService {

	@Autowired
	private YundanMapper yundanMapper;

/**
 * 按单号查询
 */
	@Override
	public Yundan finone(String dh) {
		// TODO Auto-generated method stub
		return yundanMapper.finddh(dh);
	}

@Override
public List<Yundan> findAll() {
	// TODO Auto-generated method stub
	return yundanMapper.findAll();
}

@Override
public void delete(Integer id) {
	// TODO Auto-generated method stub
	yundanMapper.delete(id);
}

@Override
public void toupdate(Yundan yundan) {
	// TODO Auto-generated method stub
	yundanMapper.toupdate(yundan);
}



	


}
