import 'package:flutter/material.dart';
import 'package:hello_wordl/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:provider/provider.dart';
import 'package:hello_wordl/presentation/providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2,))
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  }
}
