import 'package:get/get.dart';
import 'package:taskez/Screens/Auth/choose_plan.dart';
import 'package:taskez/Screens/Auth/email_address.dart';
import 'package:taskez/Screens/Auth/login.dart';
import 'package:taskez/Screens/Auth/new_workspace.dart';
import 'package:taskez/Screens/Auth/signup.dart';
import 'package:taskez/Screens/Chat/chat_screen.dart';
import 'package:taskez/Screens/Chat/messaging_screen.dart';
import 'package:taskez/Screens/Chat/new_group.dart';
import 'package:taskez/Screens/Chat/new_message_screen.dart';
import 'package:taskez/Screens/Dashboard/notifications.dart';
import 'package:taskez/Screens/Dashboard/search_screen.dart';
import 'package:taskez/Screens/Dashboard/timeline.dart';
import 'package:taskez/Screens/Onboarding/onboarding_carousel.dart';
import 'package:taskez/Screens/Onboarding/onboarding_start.dart';
import 'package:taskez/Screens/Profile/edit_profile.dart';
import 'package:taskez/Screens/Profile/my_profile.dart';
import 'package:taskez/Screens/Profile/my_team.dart';
import 'package:taskez/Screens/Profile/profile_notification_settings.dart';
import 'package:taskez/Screens/Profile/profile_overview.dart';
import 'package:taskez/Screens/Profile/team_details.dart';
import 'package:taskez/Screens/Projects/create_project.dart';
import 'package:taskez/Screens/Projects/project_detail.dart';
import 'package:taskez/Screens/Projects/set_members.dart';
import 'package:taskez/Screens/Task/set_assignees.dart';
import 'package:taskez/Screens/Task/task_due_date.dart';
import 'package:taskez/Screens/splash_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.onboardingStart, page: () => OnboardingStart()),
    GetPage(
        name: AppRoutes.onboardingCarousel, page: () => OnboardingCarousel()),
    GetPage(name: AppRoutes.emailAddress, page: () => EmailAddressScreen()),
    GetPage(
      name: AppRoutes.signUp,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return SignUp(email: args['email'] as String);
      },
    ),
    GetPage(
      name: AppRoutes.login,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return Login(email: args['email'] as String);
      },
    ),
    GetPage(name: AppRoutes.newWorkspace, page: () => NewWorkSpace()),
    GetPage(name: AppRoutes.choosePlan, page: () => ChoosePlan()),
    GetPage(name: AppRoutes.timeline, page: () => Timeline()),
    GetPage(name: AppRoutes.profileOverview, page: () => ProfileOverview()),
    GetPage(name: AppRoutes.myProfile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.editProfile, page: () => EditProfilePage()),
    GetPage(
        name: AppRoutes.profileNotifications,
        page: () => ProfileNotificationSettings()),
    GetPage(name: AppRoutes.myTeams, page: () => MyTeams()),
    GetPage(
      name: AppRoutes.teamDetails,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return TeamDetails(title: args['title'] as String);
      },
    ),
    GetPage(name: AppRoutes.chatScreen, page: () => ChatScreen()),
    GetPage(
      name: AppRoutes.messagingScreen,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return MessagingScreen(
          userName: args['userName'] as String,
          image: args['image'] as String,
          color: args['color'] as String,
        );
      },
    ),
    GetPage(name: AppRoutes.newMessage, page: () => NewMessageScreen()),
    GetPage(name: AppRoutes.newGroup, page: () => NewGroupScreen()),
    GetPage(name: AppRoutes.notifications, page: () => NotificationScreen()),
    GetPage(name: AppRoutes.searchScreen, page: () => SearchScreen()),
    GetPage(
      name: AppRoutes.projectDetails,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return ProjectDetails(
          color: args['color'] as String,
          projectName: args['projectName'] as String,
          category: args['category'] as String,
        );
      },
    ),
    GetPage(name: AppRoutes.createProject, page: () => CreateProjectScreen()),
    GetPage(name: AppRoutes.setMembers, page: () => SelectMembersScreen()),
    GetPage(name: AppRoutes.taskDueDate, page: () => TaskDueDate()),
    GetPage(name: AppRoutes.setAssignees, page: () => SetAssigneesScreen()),
  ];
}
