package top.dreamy.hrm.mapper;

import java.util.List;

import top.dreamyy.hrm.domain.Employee;
import top.dreamyy.hrm.domain.Job;
import top.dreamyy.hrm.domain.WorkInfo;

public interface WorkInfoDao {
	
	/*List<WorkInfo> selectAllWorkInfos();
	List<Job> findAlljobs();*/
	
	public Job findOne(int id);
	
}
