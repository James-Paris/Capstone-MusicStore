package com.hcl.musicstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.hcl.musicstore.model.Music;

public interface TaskRepository extends CrudRepository<Music, Integer> {
	@Query(value = "SELECT c FROM Music c WHERE c.songName LIKE '%' || :keyword || '%'"
            + " OR c.genre LIKE '%' || :keyword || '%'"
            + " OR c.description LIKE '%' || :keyword || '%'" 
            + " OR c.album LIKE '%' || :keyword || '%'"
            + " OR c.price LIKE '%' || :keyword || '%'"
            + " OR c.releaseDate LIKE '%' || :keyword || '%'"
            + " OR c.artist LIKE '%' || :keyword || '%'")
	public List<Music> findMusicBySearch(String keyword);
}
