import 'package:flutter/material.dart';
import 'package:taskez/models/models.dart';
import 'package:taskez/repositories/repositories.dart';

/// Central data access facade backed by [AppRepository].
///
/// All screens should access data through this class. The underlying
/// [AppRepository] implementation can be swapped (e.g. for an API-backed
/// repository) without changing consumer code.
class AppData {
  static final AppRepository _repository = const LocalAppRepository();

  static List<ProgressTask> get progressTasks =>
      _repository.getProgressTasks();

  static List<NotificationMention> get notificationMentions =>
      _repository.getNotificationMentions();

  static List<OnlineUserModel> get onlineUsers =>
      _repository.getOnlineUsers();

  static List<Employee> get employees => _repository.getEmployees();

  static List<Project> get projects => _repository.getProjects();

  static List<String> get profileImages => _repository.getProfileImages();

  static List<Color> get groupBackgroundColors =>
      _repository.getGroupBackgroundColors();
}
