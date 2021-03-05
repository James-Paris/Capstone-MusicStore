package com.hcl.musicstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcl.musicstore.model.Music;
import com.hcl.musicstore.repository.TaskRepository;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.Optional;

@Service
public class MusicService {

	@Autowired
    private TaskRepository taskRepository;

    public Iterable<Music> GetAllTasks() {
        return taskRepository.findAll();
    }

    public Music GetTaskById(Integer id) {
        return taskRepository.findById(id).get();
    }

    public Music AddTask(Music task) {
        return taskRepository.save(task);
    }

//    public Music addToCart(Integer id){return }

    public Optional<Music> findById(Integer id) {
        return null;
    }

    public List<Music> search(String keyword) {
	return taskRepository.findMusicBySearch(keyword);
}
    
    public void UpdateTask(Music task) {
    	Music oldTask = taskRepository.findById(task.getId()).get();
    	oldTask.setSongName(task.getSongName());
    	oldTask.setReleaseDate(task.getReleaseDate());
    	oldTask.setDescription(task.getDescription());
    	oldTask.setArtist(task.getArtist());
    	oldTask.setPrice(task.getPrice());
    	oldTask.setDescription(task.getDescription());
    	oldTask.setGenre(task.getGenre());


    	taskRepository.save(oldTask);
    }

    public void DeleteTask(Music task) {
        taskRepository.delete(task);
    }
}
