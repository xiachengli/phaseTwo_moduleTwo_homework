package com.xcl.controller;


import com.xcl.pojo.Resume;
import com.xcl.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/resume")
public class ResumeController {

    @Autowired
    ResumeService resumeService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/toLogin")
    public String toLogin() {
        request.setAttribute("msg", "请先登录");
        return "index";
    }

    /**
     * 登录接口
     *
     * @param session
     * @param username
     * @param password
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpSession session, String username, String password) {
        System.out.println(username + password);
        //用户名&密码固定为admin/admin
        if (!("admin".equals(username) && "admin".equals(password))) {
            request.setAttribute("msg", "用户名/密码错误");
            return "index";
        }
        session.setAttribute("token", username + password);
        return "redirect:list";
    }


    /**
     * 列表接口
     *
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model) {
        List<Resume> list = resumeService.findAll();
        model.addAttribute("list", list);
        return "list";
    }

    /**
     * 新增
     *
     * @return
     */
    @RequestMapping("/toInsert")
    public String toInsert() {
        return "add";
    }

    @RequestMapping("/toUpdate")
    public ModelAndView toUpdate(Long id) {
        Resume resume = resumeService.findById(id);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("edit");
        mv.addObject("resume", resume);
        return mv;
    }

    @RequestMapping("/delete")
    public String delete(Long id) {
        resumeService.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/insert")
    public String insert(Resume resume) {
        resumeService.save(resume);
        return "redirect:list";
    }

    @RequestMapping("/update")
    public String update(Resume resume) {
        resumeService.save(resume);
        return "redirect:list";
    }
}
