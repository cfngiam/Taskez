import 'package:flutter/material.dart';
import 'package:taskez/models/models.dart';

abstract class AppRepository {
  List<ProgressTask> getProgressTasks();
  List<NotificationMention> getNotificationMentions();
  List<OnlineUserModel> getOnlineUsers();
  List<Employee> getEmployees();
  List<Project> getProjects();
  List<String> getProfileImages();
  List<Color> getGroupBackgroundColors();
}
