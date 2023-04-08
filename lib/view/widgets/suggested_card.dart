import 'package:flutter/material.dart';
import 'package:graz_project/models/user_model.dart';
import 'package:video_viewer/video_viewer.dart';

class SuggestedCard extends StatelessWidget {
  SuggestedCard({super.key, this.userInfo});

  final User? userInfo;

  final VideoViewerController controller = VideoViewerController();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: () {},
        
        child: VideoViewer( 
          
          enableHorizontalSwapingGesture: false,
          enableVerticalSwapingGesture: false,
          enableChat: false,
          style: VideoViewerStyle(
            
          ),
          autoPlay: true,
          looping: true,
          enableFullscreenScale: true,
          
          // defaultAspectRatio: ,
          controller: controller,
          source: {
            "SubRip Text": VideoSource(
              video: VideoPlayerController.network(
                  "https://assets.mixkit.co/videos/preview/mixkit-little-girl-next-to-baskets-of-easter-eggs-48596-large.mp4"),
            )
          },
        ),
      ),
    );
  }
}
