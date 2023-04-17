package login.enquiry.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import login.enquiry.entity.EnquiryEntity;
import login.enquiry.service.EnquiryService;

@Controller
public class EnquiryController {

	    @Autowired
	    private EnquiryService enquiryService;

	    @GetMapping("/enquiry")
	    public String showEnquiryForm(Model model) {
	        model.addAttribute("enquiryEntity", new EnquiryEntity());
	        return "enquiryform";
	    }

	    @PostMapping("/submit-enquiry")
	    public String processEnquiryForm(@ModelAttribute("enquiryForm") EnquiryEntity enquiryEntity, BindingResult result) {
	        if (result.hasErrors()) {
	            return "enquiry-form";
	        }
	        
	        enquiryService.saveEnquiry(enquiryEntity);
	        return "redirect:/enquiry";
	       
	    }
	    
	    
	    @GetMapping("/editenquiry")
	    public String getEnquiry(@RequestParam("id") Long id, Model model) {
	    	EnquiryEntity updatedEnquiry = enquiryService.getById(id);
	    	//System.out.println(updatedEnquiry.toString());
	        model.addAttribute("updatedEnquiry", updatedEnquiry);
	        return "enquiry-details";
	    }
	    
	    @GetMapping("/allenquries")
	    public String getAllEnquries(Model model){
	    	
	    	List<EnquiryEntity> allEnquiries = enquiryService.getAllEnquiries();
	    	model.addAttribute("allEnquiries", allEnquiries);
	    	return "all-enquries";
	    	
	    }
	    
	    
	    @PostMapping("/update-enquiry")
	    public String updateEnquiryForm(@ModelAttribute("enquiryEntity") EnquiryEntity enquiryEntity, BindingResult result) {
	        
	    	
	    	
	    	System.out.println(enquiryEntity.toString());
	    	
	    	if (result.hasErrors()) {
	            return "enquiry-form";
	        }
	        
	        enquiryService.saveEnquiry(enquiryEntity);
	        return "redirect:/allenquries";
	       
	    }
	    
	    
}
