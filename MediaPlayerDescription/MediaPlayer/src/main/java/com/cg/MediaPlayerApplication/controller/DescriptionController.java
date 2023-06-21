package com.cg.MediaPlayerApplication.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.context.annotation.Description;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cg.MediaPlayerApplication.entity.Description;
import com.cg.MediaPlayerApplication.service.DescriptionService;

@RestController
@RequestMapping("/description")
@CrossOrigin("*")
public class DescriptionController {
	@Autowired
	private DescriptionService descriptionService;
	
	@PostMapping("/{videoId}")
	public String addNewdescription(@RequestBody Description d, @PathVariable int videoId) {
	return descriptionService.addNewDescriptionService(d, videoId);
	}
	@PutMapping("/{desId}")
	public Description updateDescription(@PathVariable("desId") int desId,@RequestBody Description d) {
		return descriptionService.updateDescriptionService(d, desId);
	}
	@GetMapping
	public List<Description> getAllDescriptions(){
		return descriptionService.getlistAllDescriptionsService();
	}
	
	@GetMapping("/language/{language}")
	public List<Description> searchDescriptionBylanguage(@PathVariable("language")String language){
		return descriptionService.searchDescriptionBylanguage(language);
	}
	
	@GetMapping("getvideo/{videoId}")
	public Description getById(@PathVariable int videoId)
	{
		return descriptionService.getByVideoId(videoId);
	}

}

