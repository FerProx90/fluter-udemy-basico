import 'package:hello_wordl/domain/datasources/video_post_datasource.dart';
import 'package:hello_wordl/domain/entities/video_post.dart';
import 'package:hello_wordl/infrastructure/models/local_video_model.dart';
import 'package:hello_wordl/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
