package xyz.bank.homepage.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import common.dao.CmmnDao;
import common.utils.common.PentasMap;

@Service
public class MainSvc {
	
	@Autowired
	CmmnDao cmmnDao;
	
	public String joinMbr(PentasMap params) {
		
		if( 0 != (int) cmmnDao.selectOne("home.main.chkId",params)) {
			return "dupl";
		}else {
			cmmnDao.insert("home.main.joinMbr",params);
			return "succ";
		}
	}
	
	
	
	
}
