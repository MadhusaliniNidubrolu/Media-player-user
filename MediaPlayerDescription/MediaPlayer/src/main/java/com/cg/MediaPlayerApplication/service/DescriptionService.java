//package com.cg.Service;
//import com.cg.model.Description;
//
//
//public interface DescriptionService {
//	public String addNewDescriptionService(org.springframework.context.annotation.Description d, int videoid);
//	public String updateDescriptionService(org.springframework.context.annotation.Description d, int desId);
//	List<Description>getlistAllDescriptionsService();
//	List<Description>searchDescriptionBytitle(String title);
//	List<Description> searchDescriptionBylanguage(String language);
//	String updateDescriptionService(Description d, int desId);
//}

package com.cg.MediaPlayerApplication.service;

import java.util.List;
import com.cg.MediaPlayerApplication.entity.Description;

public interface DescriptionService {
    String addNewDescriptionService(Description d, int videoId);
    Description updateDescriptionService(Description d, int desId);
    List<Description> searchDescriptionBytitle(String title);
    List<Description> getlistAllDescriptionsService();
    Description getByVideoId(int videoId);
    List<Description> searchDescriptionBylanguage(String language);
    
    
}
