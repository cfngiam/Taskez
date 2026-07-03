import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/models/models.dart';
import 'package:taskez/repositories/app_repository.dart';

class LocalAppRepository implements AppRepository {
  const LocalAppRepository();

  @override
  List<ProgressTask> getProgressTasks() => _progressTasks;

  @override
  List<NotificationMention> getNotificationMentions() =>
      _notificationMentions;

  @override
  List<OnlineUserModel> getOnlineUsers() => _onlineUsers;

  @override
  List<Employee> getEmployees() => _employees;

  @override
  List<Project> getProjects() => _projects;

  @override
  List<String> getProfileImages() => _profileImages;

  @override
  List<Color> getGroupBackgroundColors() => _groupBackgroundColors;
}

const List<ProgressTask> _progressTasks = [
  ProgressTask(
    cardTitle: "Progress Task Progress",
    rating: "3/5",
    progress: "68.99",
    progressBar: 2,
  ),
  ProgressTask(
    cardTitle: "Registration 2",
    rating: "3/4",
    progress: "75.00",
    progressBar: 3,
  ),
  ProgressTask(
    cardTitle: "Invite 5 Members",
    rating: "2/5",
    progress: "50",
    progressBar: 1,
  ),
  ProgressTask(
    cardTitle: "Setup Profile",
    rating: "3/4",
    progress: "75",
    progressBar: 3,
  ),
  ProgressTask(
    cardTitle: "Complete Workspace",
    rating: "3/5",
    progress: "68.99",
    progressBar: 2,
  ),
];

const List<NotificationMention> _notificationMentions = [
  NotificationMention(
    mentionedBy: "Benjamin Poole",
    mentionedIn: "Unity Gaming",
    read: false,
    date: "Nov 2nd",
    profileImage: "assets/memoji/1.png",
    hashTagPresent: true,
    userOnline: false,
    color: "BBF1C3",
    hashElement: "@tranmautritam",
    message:
        " when you have time please take a look at the new designs I just made in Figma. \u{1F44B}",
  ),
  NotificationMention(
    mentionedBy: "Katharine Walls",
    mentionedIn: "Unity Gaming",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/2.png",
    hashTagPresent: false,
    userOnline: true,
    color: "DBCFFE",
    hashElement: "",
    message:
        "Please make the presentation as soon as possible Tam. We're still waiting for it. \u{1F3C0}",
  ),
  NotificationMention(
    mentionedBy: "Bertha Ramos",
    mentionedIn: "UI8 Products",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/4.png",
    hashTagPresent: false,
    userOnline: true,
    color: "FFC5D5",
    hashElement: "",
    message:
        "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!",
  ),
  NotificationMention(
    mentionedBy: "Marie Bowen",
    mentionedIn: "Productivity",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/7.png",
    hashTagPresent: false,
    userOnline: false,
    color: "FAA3FF",
    hashElement: "",
    message: "Are you actually working? We're still waiting for it. \u{1F3C0}",
  ),
  NotificationMention(
    mentionedBy: "Katharine Walls",
    mentionedIn: "Unity Gaming",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/2.png",
    hashTagPresent: false,
    userOnline: true,
    color: "DBCFFE",
    hashElement: "",
    message:
        "Please make the presentation as soon as possible Tam. We're still waiting for it. \u{1F3C0}",
  ),
  NotificationMention(
    mentionedBy: "Bertha Ramos",
    mentionedIn: "UI8 Products",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/4.png",
    hashTagPresent: false,
    userOnline: true,
    color: "FFC5D5",
    hashElement: "",
    message:
        "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!",
  ),
  NotificationMention(
    mentionedBy: "Marie Bowen",
    mentionedIn: "Productivity",
    read: true,
    date: "Nov 2nd",
    profileImage: "assets/memoji/7.png",
    hashTagPresent: false,
    userOnline: false,
    color: "FAA3FF",
    hashElement: "",
    message: "Are you actually working? We're still waiting for it. \u{1F3C0}",
  ),
];

const List<OnlineUserModel> _onlineUsers = [
  OnlineUserModel(
    name: "Gareth Reid \u{1F525}",
    profileImage: "assets/memoji/1.png",
    color: "BAF0C5",
  ),
  OnlineUserModel(
    name: "Vincent Lyons \u{1F1FA}\u{1F1F8}",
    profileImage: "assets/memoji/2.png",
    color: "DACFFE",
  ),
  OnlineUserModel(
    name: "Adeline Nunez \u{1F389}",
    profileImage: "assets/memoji/4.png",
    color: "FFC7D5",
  ),
  OnlineUserModel(
    name: "Samuel Doyle \u{1F525}",
    profileImage: "assets/memoji/7.png",
    color: "C0E7FD",
  ),
  OnlineUserModel(
    name: "Ruth Benson \u{1F525}",
    profileImage: "assets/memoji/9.png",
    color: "D7D2D4",
  ),
  OnlineUserModel(
    name: "Adeline Nunez \u{1F389}",
    profileImage: "assets/memoji/4.png",
    color: "FFC7D5",
  ),
  OnlineUserModel(
    name: "Samuel Doyle \u{1F525}",
    profileImage: "assets/memoji/7.png",
    color: "C0E7FD",
  ),
  OnlineUserModel(
    name: "Ruth Benson \u{1F525}",
    profileImage: "assets/memoji/9.png",
    color: "D7D2D4",
  ),
  OnlineUserModel(
    name: "Adeline Nunez \u{1F389}",
    profileImage: "assets/memoji/4.png",
    color: "FFC7D5",
  ),
  OnlineUserModel(
    name: "Samuel Doyle \u{1F525}",
    profileImage: "assets/memoji/7.png",
    color: "C0E7FD",
  ),
  OnlineUserModel(
    name: "Ruth Benson \u{1F525}",
    profileImage: "assets/memoji/9.png",
    color: "D7D2D4",
  ),
  OnlineUserModel(
    name: "Gareth Reid \u{1F525}",
    profileImage: "assets/memoji/1.png",
    color: "BAF0C5",
  ),
  OnlineUserModel(
    name: "Vincent Lyons \u{1F1FA}\u{1F1F8}",
    profileImage: "assets/memoji/2.png",
    color: "DACFFE",
  ),
  OnlineUserModel(
    name: "Adeline Nunez \u{1F389}",
    profileImage: "assets/memoji/4.png",
    color: "FFC7D5",
  ),
];

final List<Employee> _employees = [
  Employee(
    name: "Aaliyah Langosh",
    image: "assets/girl_smile.png",
    color: HexColor.fromHex("FCA3FF"),
    activated: true,
    position: "Senior Interactions Agent",
  ),
  Employee(
    name: "Greta Streich",
    image: "assets/man-head.png",
    color: HexColor.fromHex("94F1F1"),
    activated: false,
    position: "Dynamic Security Technician",
  ),
  Employee(
    name: "Judd Koch",
    image: "assets/memoji/7.png",
    color: HexColor.fromHex("8D96FF"),
    activated: true,
    position: "Senior Interactions Agent",
  ),
  Employee(
    name: "Katherine Wells",
    image: "assets/memoji/2.png",
    color: HexColor.fromHex("DBD0FD"),
    activated: false,
    position: "Dynamic Security Technician",
  ),
  Employee(
    name: "Betha Ramos",
    image: "assets/memoji/9.png",
    color: HexColor.fromHex("FFC5D5"),
    activated: false,
    position: "Dynamic Security Technician",
  ),
  Employee(
    name: "Greta Streich",
    image: "assets/girl_smile.png",
    color: HexColor.fromHex("94F1F1"),
    activated: false,
    position: "Dynamic Security Technician",
  ),
  Employee(
    name: "Aaliyah Langosh",
    image: "assets/girl_smile.png",
    color: HexColor.fromHex("FCA3FF"),
    activated: true,
    position: "Senior Interactions Agent",
  ),
];

const List<Project> _projects = [
  Project(
    projectName: "Unity Dashboard",
    category: "Design",
    color: "A06AFA",
    ratingsUpperNumber: 15,
    ratingsLowerNumber: 20,
  ),
  Project(
    projectName: "Instagram   Shots\u{1F1FA}\u{1F1F8}",
    category: "Marketing",
    color: "8D96FF",
    ratingsUpperNumber: 8,
    ratingsLowerNumber: 20,
  ),
  Project(
    projectName: "Cubbies",
    category: "Design",
    color: "FF968E",
    ratingsUpperNumber: 15,
    ratingsLowerNumber: 20,
  ),
  Project(
    projectName: "OpenMind \u{1F680}",
    category: "Development",
    color: "FFDE72",
    ratingsUpperNumber: 19,
    ratingsLowerNumber: 20,
  ),
  Project(
    projectName: "UI8 Platform",
    category: "Design",
    color: "A06AFA",
    ratingsUpperNumber: 10,
    ratingsLowerNumber: 20,
  ),
  Project(
    projectName: "3D Characters Inc.",
    category: "Development",
    color: "A6F69C",
    ratingsUpperNumber: 18,
    ratingsLowerNumber: 20,
  ),
];

final List<String> _profileImages = [
  "assets/memoji/1.png",
  "assets/memoji/2.png",
  "assets/memoji/4.png",
  "assets/memoji/7.png",
];

final List<Color> _groupBackgroundColors = [
  HexColor.fromHex("BCF2C7"),
  HexColor.fromHex("8D96FF"),
  HexColor.fromHex("A5F69C"),
  HexColor.fromHex("FCA3FF"),
];
