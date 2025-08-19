import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PostStory extends StatefulWidget {
  const PostStory({super.key});

  @override
  State<PostStory> createState() => _PostStoryState();
}

class _PostStoryState extends State<PostStory> {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller: controller,
        storyItems: [
          StoryItem.text(
            title: 'Hello World',
            backgroundColor: Colors.green,
            roundedTop: true,
          ),
          StoryItem.inlineImage(
            url: "https://picsum.photos/400/800?image=1",
            controller: controller,
            caption: Text(
              'Image caption',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black54,
                fontSize: 17,
              ),
            ),
          ),
          StoryItem.pageVideo(
            "https://www.youtube.com/watch?v=zBjJUV-lzHo",
            controller: controller,
            caption: Text(
              "Sample mp4 video",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black54,
                fontSize: 17,
              ),
            ),
            duration: const Duration(seconds: 10),
          ),

          /// 👉 YouTube Video Story (Thumbnail + Tap to Play)
          StoryItem.pageImage(
            url: "https://img.youtube.com/vi/iV6neD4KNhI/0.jpg", // Thumbnail
            controller: controller,
            caption: Text(
              "Tap to play YouTube video",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black54,
                fontSize: 17,
              ),
            ),

            imageFit: BoxFit.cover,
          ),
        ],
        onStoryShow: (storyItem, index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const YouTubePlayerScreen(videoId: "zBjJUV-lzHo"),
              ),
            );
          }
        },
      ),
    );
  }
}

class YouTubePlayerScreen extends StatefulWidget {
  final String videoId;
  const YouTubePlayerScreen({super.key, required this.videoId});

  @override
  State<YouTubePlayerScreen> createState() => _YouTubePlayerScreenState();
}

class _YouTubePlayerScreenState extends State<YouTubePlayerScreen> {
  late YoutubePlayerController _ytController;

  @override
  void initState() {
    super.initState();
    _ytController = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _ytController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: YoutubePlayer(
          controller: _ytController,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
