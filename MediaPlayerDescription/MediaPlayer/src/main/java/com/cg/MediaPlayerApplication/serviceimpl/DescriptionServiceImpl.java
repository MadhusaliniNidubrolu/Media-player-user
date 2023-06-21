package com.cg.MediaPlayerApplication.serviceimpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Optional;

import com.cg.MediaPlayerApplication.entity.Description;
import com.cg.MediaPlayerApplication.entity.Tag;
import com.cg.MediaPlayerApplication.exceptions.DescriptionNotFoundException;
import com.cg.MediaPlayerApplication.repository.DescriptionRepo;
import com.cg.MediaPlayerApplication.service.DescriptionService;


@Service
@Transactional
@Component
public class DescriptionServiceImpl implements DescriptionService {
	@Autowired
	private DescriptionRepo descriptionRepo;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Override
	public List<Description> getlistAllDescriptionsService() {
		List<Description> list=descriptionRepo.findAll();
		if(list.isEmpty()) {
			throw new DescriptionNotFoundException(400,"no descriptions available");
			
		}
		return list;
	}
	@Override
	public List<Description> searchDescriptionBytitle(String title) {
		List<Description> d=descriptionRepo.findBytitle(title);
		if(d.isEmpty()) {
			throw new DescriptionNotFoundException(400,"such type tittle are not found");
		}
		return d;
	}
	

	@Override
	public List<Description> searchDescriptionBylanguage(String language) {
		List<Description> d1=descriptionRepo.findBylanguage(language);
		if(d1.isEmpty()) {
			throw new DescriptionNotFoundException(400,"such type language are not found");
		}
		return d1;
	}
	@Override
	public String addNewDescriptionService(Description d, int videoId) {
		if(d.getDescription()==null) {
        	
			throw new DescriptionNotFoundException(400,"description added failed");
		        }
		d.setVideoId(videoId);
		d=descriptionRepo.save(d);
		return "Description added successfully";
	}
	@Override
	public Description updateDescriptionService(Description d, int desId) {
		Optional<Description> d1 = descriptionRepo.findById(desId);
	    if (d1.isEmpty()) {
	        
	  
	        throw new DescriptionNotFoundException(400, "Description not found");
	    }
	    Description d2 =d1.get();
        d2.setTitle(d.getTitle());
        d2.setLanguage(d.getLanguage());
        d2.setDescription(d.getDescription());
        return descriptionRepo.save(d2);
	}
	



	@Override
	public Description getByVideoId(int videoId) {
		
		 Description description = descriptionRepo.findByVideoId(videoId);
		 
		 List<Tag> listOfTags = restTemplate.getForObject("http://localhost:8089/tags/"+description.getDesId(), List.class);
		 description.setTag(listOfTags);
		 
		 return description;
	}



	
}