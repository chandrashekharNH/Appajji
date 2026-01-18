import 'package:flutter/material.dart';
import '../widgets/appaji_app_bar.dart';
import 'image_viewer_screen.dart';
import 'video_player_screen.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  static const List<String> images = [
    "assets/images/profilephotos/profile.png",
    "assets/images/profilephotos/profile2.png",
    "assets/images/profilephotos/profile3.png",
    "assets/images/rawphotos/photo2.jpeg",
    "assets/images/rawphotos/photo4.jpeg",
    "assets/images/rawphotos/photo5.jpeg",
    "assets/images/rawphotos/photo6.jpeg",
    "assets/images/rawphotos/photo7.jpeg",
    "assets/images/rawphotos/photo8.jpeg",
    "assets/images/rawphotos/photo9.jpeg",
    "assets/images/rawphotos/photo10.jpeg",
    "assets/images/rawphotos/photo11.jpeg",
    "assets/images/rawphotos/photo12.jpeg",
    "assets/images/rawphotos/photo13.jpeg",
    "assets/images/rawphotos/photo14.jpeg",
    "assets/images/rawphotos/photo15.jpeg",
    "assets/images/rawphotos/photo16.jpeg",
  ];

  static const List<String> videos = [
    "assets/videos/pooja.mp4",
    "assets/videos/pooja1.mp4",
    "assets/videos/pooja2.mp4",

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppajiAppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo), text: "Images"),
              Tab(icon: Icon(Icons.videocam), text: "Videos"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _ImagesTab(images: images),
            _VideosTab(videos: videos),
          ],
        ),
      ),
    );
  }
}

class _ImagesTab extends StatelessWidget {
  final List<String> images;
  const _ImagesTab({required this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (_, i) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ImageViewerScreen(
                images: images,
                initialIndex: i,
              ),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(images[i], fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class _VideosTab extends StatelessWidget {
  final List<String> videos;
  const _VideosTab({required this.videos});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: videos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (_, i) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => VideoPlayerScreen(assetPath: videos[i]),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const Icon(
              Icons.play_circle_fill,
              size: 48,
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}