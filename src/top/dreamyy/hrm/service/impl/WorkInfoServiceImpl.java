package top.dreamyy.hrm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.dreamy.hrm.mapper.WorkInfoDao;
import top.dreamyy.hrm.domain.Job;
import top.dreamyy.hrm.service.WorkInfoService;

@Service
public class WorkInfoServiceImpl implements WorkInfoService{
	
	@Autowired
	private WorkInfoDao workInfoDao;

	@Override
	public Job findOne(int  id) {
		Job job = workInfoDao.findOne(id);
		System.out.println(job);
		return job;
	}

	
	/*
	// 查询出所有 工作记录信息
	public List<WorkInfo> selectAllWorkInfo() {
		// TODO Auto-generated method stub
		return workInfoDao.selectAllWorkInfos();
	}


	@Override
	public List<Job> findAlljobs() {
		// TODO Auto-generated method stub
		return workInfoDao.findAlljobs();
	}*/
	
	
	public WorkInfoDao getWorkInfoDao() {
		return workInfoDao;
	}

	public void setWorkInfoDao(WorkInfoDao workInfoDao) {
		this.workInfoDao = workInfoDao;
	}
	
	
	

}
