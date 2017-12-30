package top.dreamyy.hrm.service;

import java.util.List;

import top.dreamyy.hrm.domain.Job;
import top.dreamyy.hrm.domain.WorkInfo;

public interface WorkInfoService {
	//List<WorkInfo> selectAllWorkInfo();
	//List<Job> findAlljobs();
	public Job findOne(int id);
}
