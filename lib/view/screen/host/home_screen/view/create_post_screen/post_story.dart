import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class PostStory extends StatefulWidget {
  const PostStory({super.key});

  @override
  State<PostStory> createState() => _PostStoryState();
}

class _PostStoryState extends State<PostStory> {
  /*  final PageController _pageController = PageController();
  final List<Map<String, String>> stories = [
    {
      "type": "image",
      "url": "https://picsum.photos/400/800?image=1",
    },
    {
      "type": "video",
      "url": "https://www.youtube.com/shorts/HVFTkE5_SHA",
    },
    {
      "type": "image",
      "url": "https://picsum.photos/400/800?image=3",
    },
  ];

  int currentIndex = 0;
  VideoPlayerController? _videoController;

  void initState() {
    super.initState();
    _loadStory(0);
  }

  void _loadStory(int index) async {
    if (stories[index]["type"] == "video") {
      _videoController?.dispose();
      _videoController =
      VideoPlayerController.network(stories[index]["url"]!)
        ..initialize().then((_) {
          setState(() {});
          _videoController?.play();
        });
    }
  }

  void _nextStory() {
    if (currentIndex < stories.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context); // Close after last story
    }
  }

  void dispose() {
    _videoController?.dispose();
    _pageController.dispose();
    super.dispose();
  }*/

  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            child: StoryView(
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
                  "https://www.youtube.com/shorts/HVFTkE5_SHA.mp4",
                  controller: controller,
                  caption: Text(
                    "Sample video",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  duration: Duration(seconds: 10),
                ),
              ],
            ),
          ),
        ],
      ),

      /*Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: stories.length,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
              _loadStory(index);
            },
            itemBuilder: (context, index) {
              if (stories[index]["type"] == "image") {
                return GestureDetector(
                  onTap: _nextStory,
                  child: Image.network(
                    stories[index]["url"]!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                );
              } else {
                return GestureDetector(
                  onTap: _nextStory,
                  child: _videoController != null &&
                      _videoController!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _videoController!.value.aspectRatio,
                    child: VideoPlayer(_videoController!),
                  )
                      : const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),

          // Progress indicators
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Row(
              children: List.generate(
                stories.length,
                    (index) => Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: 4,
                    decoration: BoxDecoration(
                      color: index <= currentIndex
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}
