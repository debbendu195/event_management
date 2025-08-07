// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';

import '../../view/screen/chat_screen/chat_screen.dart';
import '../../view/screen/dmOver/favourite/view/gallery_screen.dart';
import '../../view/screen/dmOver/favourite/view/italiano_screen.dart';
import '../../view/screen/dmOver/favourite/view/update_screen.dart';
import '../../view/screen/dmOver/home_screen/view/dm_home_screen.dart';
import '../../view/screen/dmOver/home_screen/view/event_explore_screen.dart';
import '../../view/screen/dmOver/home_screen/view/fliter_event_screen.dart';
import '../../view/screen/event_screen/view/invite_screen.dart';
import '../../view/screen/home_screen/view/home_screen.dart';
import '../../view/screen/profile_screen/view/settings/change_pass_screen.dart';
import '../../view/screen/profile_screen/view/settings/edit_profile_screen.dart';
import '../../view/screen/profile_screen/view/settings/payment_screen.dart';
import '../../view/screen/profile_screen/view/settings/privacy_screen.dart';
import '../../view/screen/profile_screen/view/settings/settings_screen.dart';
import '../../view/screen/profile_screen/view/settings/stripe_screen.dart';
import '../../view/screen/social_screen/view/chatroom_screen.dart';
import '../../view/screen/create_post_screen/Create_story_screen.dart';
import '../../view/screen/create_post_screen/create_post_screen.dart';
import '../../view/screen/create_post_screen/post_story.dart';
import '../../view/screen/event_screen/view/all_events.dart';
import '../../view/screen/home_screen/view/create_event_screen.dart';
import '../../view/screen/event_screen/view/past_screen.dart';
import '../../view/screen/event_screen/view/upcoming_screen.dart';
import '../../view/screen/home_screen/view/group_event_screen.dart';
import '../../view/screen/social_screen/view/group_screen.dart';
import '../../view/screen/message_screen/view/message_list_screen.dart';
import '../../view/screen/home_screen/view/notification_screen.dart';
import '../../view/screen/profile_screen/view/profile_screen.dart';
import '../../view/screen/profileRole/profile_role_screen.dart';
import '../../view/screen/social_screen/view/social_feed.dart';



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
  static const String dmHomeScreen = "/DmHomeScreen";
  static const String eventExploreScreen = "/EventExploreScreen";
  static const String fliterEventScreen = "/FliterEventScreen";
  static const String italianoScreen = "/ItalianoScreen";
  static const String galleryScreen = "/GalleryScreen";
  static const String updateScreen = "/UpdateScreen";


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
    GetPage(name: dmHomeScreen, page: () => DmHomeScreen()),
    GetPage(name: eventExploreScreen, page: () => EventExploreScreen()),
    GetPage(name: fliterEventScreen, page: () => FliterEventScreen()),
    GetPage(name: italianoScreen, page: () => ItalianoScreen()),
    GetPage(name: galleryScreen, page: () => GalleryScreen()),
    GetPage(name: updateScreen, page: () => UpdateScreen()),



  ];
}
