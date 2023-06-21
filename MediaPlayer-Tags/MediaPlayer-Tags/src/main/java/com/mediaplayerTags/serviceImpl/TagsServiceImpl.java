package com.mediaplayerTags.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mediaplayerTags.Entity.Tag;
import com.mediaplayerTags.repository.TagRepository;
import com.mediaplayerTags.service.TagService;
@Service
public class TagsServiceImpl implements TagService{
	
	@Autowired
    private TagRepository tagRepository;
  
    public Tag addTag(Tag tag) {
        return tagRepository.save(tag);
    }
    public List<Tag> getTagById(int desId) {
        return tagRepository.findByDesId(desId);
    }

    public List<Tag> getAllTags() {
        return tagRepository.findAll();
    }
 
    public void deleteTag(int tagId) {
        tagRepository.deleteById(tagId);
    }
    

}
