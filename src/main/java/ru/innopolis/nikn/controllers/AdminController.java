package ru.innopolis.nikn.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import ru.innopolis.nikn.models.models.StatusModel;
import ru.innopolis.nikn.models.services.StatusService;

/**
 * Created by Nikolay on 06.12.2016.
 */
@Controller
public class AdminController {
    @Autowired
    private StatusService statusService;
    private static Logger logger = LoggerFactory.getLogger(AdminController.class);

    private String getAuthentication() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName(); //get logged in username
    }

    @GetMapping(value = "/admin")
    public ModelAndView mainPage() {
        logger.info("Main admin page", getAuthentication());
        ModelAndView model = new ModelAndView("admin/admin-home");
        model.addObject("title", "Admin home page.");
        return model;
    }
    @GetMapping(value = "/admin/status")
    public ModelAndView statusPage(StatusModel statusModel) {
        logger.info("Status admin page ", getAuthentication());
        ModelAndView modelAndView = new ModelAndView("/admin/status", "status", statusModel);
        modelAndView.addObject("statusList", statusService.getAllStatus());
        return modelAndView;
    }

    @PostMapping(value = "/admin/status/add")
    public String addStatus(StatusModel status) {
        logger.info("Add status action ", getAuthentication());
        statusService.getAddStatus(status);
        return "redirect:/admin/status";
    }

    @GetMapping(value = "/admin/status/delete/{id}")
    public String deleteStatus(@PathVariable Long id) {
        logger.info("Delete status action ", id, getAuthentication());
        statusService.deleteStatus(id);
        return "redirect:/admin/status";
    }

    @GetMapping(value = "/admin/status/edit/{id}")
    public ModelAndView editStatus(@PathVariable Long id) {
        logger.info("Edit status action ", id, getAuthentication());
        return statusPage(statusService.getById(id));
    }
}
