import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const SizedBox(height: 12),

          // ================= PAGE TITLE =================
          Text(
            t.media, // You can rename this key to "avatar" later if you want
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),

          const SizedBox(height: 12),

          // ================= TABS =================
          const TabBar(
            indicatorColor: Colors.deepOrange,
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.temple_hindu), text: "Avatars"),
              Tab(icon: Icon(Icons.video_library), text: "Videos"),
            ],
          ),

          // ================= TAB CONTENT =================
          Expanded(
            child: TabBarView(
              children: [
                _AvatarGrid(),
                _VideoPlaceholder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================= AVATAR GRID =================
class _AvatarGrid extends StatelessWidget {
  final List<Map<String, String>> avatars = const [
    {
      "image": "assets/images/avatars/matsya.png",
      "name": "Matsya",
    },
    {
      "image": "assets/images/avatars/kurma.png",
      "name": "Kurma",
    },
    {
      "image": "assets/images/avatars/varaha.png",
      "name": "Varaha",
    },
    {
      "image": "assets/images/avatars/narasimha.png",
      "name": "Narasimha",
    },
    {
      "image": "assets/images/avatars/rama.png",
      "name": "Rama",
    },
    {
      "image": "assets/images/avatars/krishna.png",
      "name": "Krishna",
    },
    {
      "image": "assets/images/avatars/buddha.png",
      "name": "Buddha",
    },
    {
      "image": "assets/images/avatars/kalki.png",
      "name": "Kalki",
    },
  ];

  const _AvatarGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 0.75,
      ),
      itemCount: avatars.length,
      itemBuilder: (_, index) {
        final avatar = avatars[index];

        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.asset(
                    avatar["image"]!,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  avatar["name"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.brown,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ================= VIDEO PLACEHOLDER =================
class _VideoPlaceholder extends StatelessWidget {
  const _VideoPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.video_library,
            size: 64,
            color: Colors.grey,
          ),
          SizedBox(height: 12),
          Text(
            "Videos coming soon",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}