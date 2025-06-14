import 'package:hello_wordl/domain/datasources/video_post_datasource.dart';
import 'package:hello_wordl/domain/entities/video_post.dart';
import 'package:hello_wordl/domain/repositories/video_post_repositoriy.dart';

class VideoPostsRepositoryImp implements VideoPostRepositoriy {
  final VideoPostDatasource videosDataSource;

  VideoPostsRepositoryImp({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
