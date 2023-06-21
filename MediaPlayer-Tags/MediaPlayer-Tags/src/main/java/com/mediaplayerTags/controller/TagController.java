package com.mediaplayerTags.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mediaplayerTags.Entity.Tag;
import com.mediaplayerTags.exceptions.DuplicateTagException;
import com.mediaplayerTags.exceptions.TagNotFoundException;
import com.mediaplayerTags.service.TagService;

@RestController
@RequestMapping("/tags")
public class TagController {
	@Autowired
    private TagService tagService;
	
	
	@GetMapping
    public ResponseEntity<List<Tag>> getAllTags() {
        List<Tag> tags = tagService.getAllTags();
        return ResponseEntity.ok(tags);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<List<Tag>> getTagById(@PathVariable int id) {
        try {
            List<Tag> tag = tagService.getTagById(id);
            return ResponseEntity.ok(tag);
        } catch (TagNotFoundException e) {
            return ResponseEntity.notFound().build();
        }
    }
    
    @PostMapping
    public ResponseEntity<Tag> createTag(@RequestBody Tag tag) {
        try {
            Tag createdTag = tagService.addTag(tag);
            return ResponseEntity.status(HttpStatus.CREATED).body(createdTag);
        } catch (DuplicateTagException e) {
            return ResponseEntity.badRequest().body(null);
        }
    }
    
  /*  @PutMapping("/{id}")
    public ResponseEntity<Tag> updateTag(@PathVariable Long id, @RequestBody Tag tag) {
        try {
            Tag updatedTag = tagService.updateTag(id, tag);
            return ResponseEntity.ok(updatedTag);
        } catch (TagNotFoundException e) {
            return ResponseEntity.notFound().build();
        }
    }*/
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTag(@PathVariable int id) {
        try {
            tagService.deleteTag(id);
            return ResponseEntity.noContent().build();
        } catch (TagNotFoundException e) {
            return ResponseEntity.notFound().build();
        }
    }
}
