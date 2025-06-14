import 'package:flutter/material.dart';
import 'package:hello_wordl/domain/entities/video_post.dart';
import 'package:hello_wordl/domain/repositories/video_post_repositoriy.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  final VideoPostRepositoriy videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
