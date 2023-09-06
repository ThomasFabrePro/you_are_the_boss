import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_are_the_boss/classes/list_episodes.dart';
import 'package:you_are_the_boss/main.dart';
import 'package:you_are_the_boss/models/episode.dart';
// import 'package:you_are_the_boss/view_models/episode_view_model.dart';

class DecisionButton extends StatefulWidget {
  final String episodeUuid;
  final String buttonLabel;
  // final EpisodeViewModel episodeViewModel;
  const DecisionButton({
    Key? key,
    required this.episodeUuid,
    required this.buttonLabel,
    // required this.episodeViewModel,
  }) : super(key: key);

  @override
  State<DecisionButton> createState() => _DecisionButtonState();
}

class _DecisionButtonState extends State<DecisionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('episode', widget.episodeUuid);
        Episode episode = ListEpisodes().getEpisode(widget.episodeUuid);
        MyHomePage.episodeViewModel.loadEpisode(episode);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.white30,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              widget.buttonLabel,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                // fontWeight: FontWeight.bold,
                color: Color.fromARGB(213, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
