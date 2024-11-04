import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../core/theme/app_color.dart';

class ShowYoutubeVideo extends StatefulWidget {
  const ShowYoutubeVideo({super.key});

  @override
  State<ShowYoutubeVideo> createState() => _ShowYoutubeVideoState();
}

class _ShowYoutubeVideoState extends State<ShowYoutubeVideo> {
  late YoutubePlayerController _controller;
  String videoID = 'r-Pld_6Q0N8';
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
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
