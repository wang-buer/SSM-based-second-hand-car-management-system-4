package com.carSystem.dao;

import org.springframework.stereotype.Repository;

import com.carSystem.entity.Car;
import com.carSystem.entity.Comment;
@Repository
public interface CommentMapper {
	//Ìí¼Ó³µÁ¾
	public void insertCommnet(Comment comment);
}
