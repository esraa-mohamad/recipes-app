import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../core/theme/app_color.dart';

class ShowYoutubeVideo extends StatefulWidget {
  const ShowYoutubeVideo({super.key, required this.mealsDetails});

  final MealsDetails? mealsDetails;
  @override
  State<ShowYoutubeVideo> createState() => _ShowYoutubeVideoState();
}

class _ShowYoutubeVideoState extends State<ShowYoutubeVideo> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    String videoId = _extractVideoId(widget.mealsDetails!.youtubeLink ?? '');
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }
  String _extractVideoId(String url) {
    final uri = Uri.parse(url);
    return uri.queryParameters['v'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(12),
        topLeft: Radius.circular(12),
      ),
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            width: double.infinity,
            controller: _controller,
            liveUIColor: AppColor.mainOrange,
            showVideoProgressIndicator: true,
          ),
          builder: (context, player) {
            return player;
          },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
