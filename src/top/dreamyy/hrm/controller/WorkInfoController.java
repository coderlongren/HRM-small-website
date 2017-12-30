package top.dreamyy.hrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.xml.internal.bind.v2.model.core.ID;

import top.dreamyy.hrm.domain.Dept;
import top.dreamyy.hrm.domain.Job;
import top.dreamyy.hrm.domain.WorkInfo;
import top.dreamyy.hrm.service.WorkInfoService;
import top.dreamyy.hrm.service.impl.WorkInfoServiceImpl;
import top.dreamyy.hrm.util.tag.PageModel;

@Controller
@RequestMapping("/work_info")
public class WorkInfoController {
	@Autowired
	private WorkInfoService workInfoService;
	
	/**
	 * 查询出所有的上班记录信息
	 * @return
	 */
	@RequestMapping("/selectWork_info")
	public String selectWork_info(Model model,Integer pageIndex,
			 @ModelAttribute WorkInfo workInfo) {
		
		PageModel pageModel = new PageModel();
		System.out.println("getPageIndex = " + pageModel.getPageIndex());
		System.out.println("getPageSize = " + pageModel.getPageSize());
		System.out.println("getRecordCount = " + pageModel.getRecordCount());
		if(pageIndex != null){
			pageModel.setPageIndex(pageIndex);
		}
		// 查询所有的用户记录信息
		List<WorkInfo> workInfos = null;
				//workInfoService.selectAllWorkInfo();
		model.addAttribute("workInfos", workInfos);
		model.addAttribute("pageModel", pageModel);
		
		return "worker_info/worker_info";
	}
	
	@RequestMapping("/salary_info")
	public String salary_info() {
		
		
		return "worker_info/worker_salary";
	}
	
	/**
	 * 根据员工名字模糊搜索上班记录
	 */
	@RequestMapping("/selectOneWithSearch")
	public String selectOneWithSearch() {
		
		
		
		return "worker_info/worker_salary";
	}
	
	@RequestMapping("/test")
	public String test(){
		int id = 1;
		Job jobs = workInfoService.findOne(id);
		return null;
	}
	
}
