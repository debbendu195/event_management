// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';

import '../../view/screen/chat_screen/chat_screen.dart';
import '../../view/screen/chatroom/chatroom_screen.dart';
import '../../view/screen/create_post_screen/Create_story_screen.dart';
import '../../view/screen/create_post_screen/create_post_screen.dart';
import '../../view/screen/create_post_screen/post_story.dart';
import '../../view/screen/event/all_events.dart';
import '../../view/screen/event/create_event_screen.dart';
import '../../view/screen/event/past_screen.dart';
import '../../view/screen/event/upcoming_screen.dart';
import '../../view/screen/event_screen/group_event_screen.dart';
import '../../view/screen/event_screen/invite_screen.dart';
import '../../view/screen/group/group_screen.dart';
import '../../view/screen/home/home_screen.dart';
import '../../view/screen/messageList/message_list_screen.dart';
import '../../view/screen/notification/notification_screen.dart';
import '../../view/screen/profile/profile_screen.dart';
import '../../view/screen/profileRole/profile_role_screen.dart';
import '../../view/screen/settings/change_pass_screen.dart';
import '../../view/screen/settings/edit_profile_screen.dart';
import '../../view/screen/settings/payment_screen.dart';
import '../../view/screen/settings/privacy_screen.dart';
import '../../view/screen/settings/settings_screen.dart';
import '../../view/screen/settings/stripe_screen.dart';
import '../../view/screen/settings/support_screen.dart';
import '../../view/screen/social_feed/social_feed.dart';



class AppRoutes {
  ///=========================== Student Part ===============
  static const String profileRoleScreen = "/profileRoleScreen";
  static const String homeScreen = "/HomeScreen";
  static const String allEvents = "/AllEvents";
  static const String upcomingScreen = "/UpcomingScreen";
  static const String pastScreen = "/PastScreen";
  static const String notificationScreen = "/NotificationScreen";
  static const String createEventScreen = "/CreateEventScreen";
  static const String groupEventScreen = "/GroupEventScreen";
  static const String inviteScreen = "/InviteScreen";
  static const String createPostScreen = "/CreatePostScreen";
  static const String createStoryScreen = "/CreateStoryScreen";
  static const String postStory = "/postStory";
  static const String socialFeed = "/SocialFeed";
  static const String groupScreen = "/GroupScreen";
  static const String chatroomScreen = "/ChatroomScreen";
  static const String chatScreen = "/ChatScreen";
  static const String messageListScreen = "/MessageListScreen";
  static const String profileScreen = "/ProfileScreen";
  static const String settingsScreen = "/SettingsScreen";
  static const String editProfileScreen = "/EditProfileScreen";
  static const String paymentScreen = "/PaymentScreen";
  static const String stripeScreen = "/StripeScreen";
  static const String supportScreen = "/supportScreen";
  static const String changePassScreen = "/ChangePassScreen";
  static const String privacyScreen = "/PrivacyScreen";


  static List<GetPage> routes = [
    ///=========================== Student Part ==============
    GetPage(name: profileRoleScreen, page: () => ProfileRoleScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: allEvents, page: () => AllEvents()),
    GetPage(name: upcomingScreen, page: () => UpcomingScreen()),
    GetPage(name: pastScreen, page: () => PastScreen()),
    GetPage(name: notificationScreen, page: () => NotificationScreen()),
    GetPage(name: createEventScreen, page: () => CreateEventScreen()),
    GetPage(name: groupEventScreen, page: () => GroupEventScreen()),
    GetPage(name: inviteScreen, page: () => InviteScreen()),
    GetPage(name: createPostScreen, page: () => CreatePostScreen()),
    GetPage(name: createStoryScreen, page: () => CreateStoryScreen()),
    GetPage(name: postStory, page: () => PostStory()),
    GetPage(name: socialFeed, page: () => SocialFeed()),
    GetPage(name: groupScreen, page: () => GroupScreen()),
    GetPage(name: chatroomScreen, page: () => ChatroomScreen()),
    GetPage(name: chatScreen, page: () => ChatScreen()),
    GetPage(name: messageListScreen, page: () => MessageListScreen()),
    GetPage(name: profileScreen, page: () => ProfileScreen()),
    GetPage(name: settingsScreen, page: () => SettingsScreen()),
    GetPage(name: editProfileScreen, page: () => EditProfileScreen()),
    GetPage(name: paymentScreen, page: () => PaymentScreen()),
    GetPage(name: stripeScreen, page: () => StripeScreen()),
    GetPage(name: changePassScreen, page: () => ChangePassScreen()),
    GetPage(name: privacyScreen, page: () => PrivacyScreen()),



  ];
}
