package com.mediaplayerTags.service;

import java.util.List;

import com.mediaplayerTags.Entity.Tag;

public interface TagService {

	Tag addTag(Tag tag);

	List<Tag> getTagById(int desId);

	List<Tag> getAllTags();

	void deleteTag(int tagId);

}
