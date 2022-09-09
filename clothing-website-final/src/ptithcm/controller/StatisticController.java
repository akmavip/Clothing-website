package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/report/")
public class StatisticController {
	@RequestMapping("index")
	public String index(HttpServletRequest request) {
		return("admin_v1/report/index");
	}
}
