package com.team01.webapp.alarm.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.team01.webapp.model.Alarm;

public interface IAlarmService {
	
	//읽지 않은 알림 수
	public int selectAlarmCount(int userNo);
	
	//전체 알림 리스트
	public List<Alarm> selectAlarmList(int userNo);
	
	//알림 추가
	public void insertAlarm(String srNo, HttpSession session);
	
	//알림 체크
	public void updateCheck(String srNo);
	
	//알림 삭제
	public void deleteAlarm(int alarmNo);
}