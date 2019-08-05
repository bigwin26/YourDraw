package com.drawSneakers.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.drawSneakers.webapp.entity.AppPush;

public interface PushDao {

	int insertPushResult(@Param("shoes_name")String shoes_name,@Param("release_site")String release_site, @Param("content")String content, @Param("push_order")String push_order, @Param("status")String status,@Param("status_message")String status_message);
	void updatePushResult(String shoes_name,String release_site);
}
