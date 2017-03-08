package stu.liangyf.bysj.service;

import java.util.List;

import stu.liangyf.bysj.entity.GwyprsTop5Entity;
import stu.liangyf.bysj.entity.XxjbxxEntity;
import stu.liangyf.bysj.entity.XzfbqkEntity;

public interface XxService {

	public int countXxxstjlsByXxid(String xxid);

	public int countXxssbymssByXxid(String xxid);

	public int countXxxsblysByXxid(String xxid);

	public List<XzfbqkEntity> countXzfbqk();

	public List<GwyprsTop5Entity> countGwyprsTop5();
	
	public XxjbxxEntity getXxjbxx(String xxzh,String xxdlmm);
}
