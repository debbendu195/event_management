import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:get/get.dart';
import '../../../../../../core/app_routes/app_routes.dart';

class PostStory extends StatefulWidget {
  const PostStory({super.key});

  @override
  State<PostStory> createState() => _PostStoryState();
}

class _PostStoryState extends State<PostStory> {
  final StoryController controller = StoryController();

  final List<Map<String, String>> stories = [
    {"type": "text", "content": "Hello World"},
    {"type": "image", "content": "https://picsum.photos/400/800?image=1", "caption": "Image caption"},
    {"type": "video", "content": "https://samplelib.com/lib/preview/mp4/sample-20s.mp4", "caption": "Sample 20s video"},
    {"type": "image", "content": "https://picsum.photos/400/800?image=9", "caption": "Next image after video"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller: controller,
        storyItems: stories.map((story) {
          switch (story["type"]) {
            case "text":
              return StoryItem.text(
                title: story["content"] ?? "",
                backgroundColor: Colors.green,
                roundedTop: true,
              );
            case "image":
              return StoryItem.inlineImage(
                url: story["content"] ?? "",
                controller: controller,
                caption: Text(
                  story["caption"] ?? "",
                  style: const TextStyle(color: Colors.white, backgroundColor: Colors.black54, fontSize: 17),
                ),
              );
            case "video":
              return StoryItem.pageVideo(
                story["content"] ?? "",
                controller: controller,
                duration: const Duration(seconds: 20),
                caption: Text(
                  story["caption"] ?? "",
                  style: const TextStyle(color: Colors.white, backgroundColor: Colors.black54, fontSize: 17),
                ),
              );
            default:
              return StoryItem.text(title: "Unknown", backgroundColor: Colors.grey);
          }
        }).toList(),

        onStoryShow: (storyItem, index) => debugPrint("Showing story index: $index"),

        onComplete: () {
          debugPrint("All stories completed!");
          Get.toNamed(AppRoutes.socialFeed);
        },
      ),
    );
  }
}
