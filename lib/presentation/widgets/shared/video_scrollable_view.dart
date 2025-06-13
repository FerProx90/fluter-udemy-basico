import 'package:flutter/material.dart';
import 'package:hello_wordl/domain/entities/video_post.dart';
import 'package:hello_wordl/presentation/widgets/shared/video/full_screen_player.dart';
import 'package:hello_wordl/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder( //El pageView.builder siver para renderizar dinámicamente las vistas necesarias
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost videoPost = videos[index];

        return Stack( // Permite posicionar Widgets donde quieras (tipo posision Relative/Abosulute)
          children: [
            SizedBox.expand(child: FullScreenPlayer(
              caption: videoPost.caption,
              videoUrl: videoPost.videoUrl,
            )), // Expand para que abarque todo
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}