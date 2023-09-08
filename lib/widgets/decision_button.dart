import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_are_the_boss/classes/list_episodes.dart';
import 'package:you_are_the_boss/main.dart';
import 'package:you_are_the_boss/models/episode.dart';
// import 'package:you_are_the_boss/view_models/episode_view_model.dart';

class DecisionButton extends StatefulWidget {
  final String episodeName;
  final String buttonLabel;
  // final EpisodeViewModel episodeViewModel;
  const DecisionButton({
    Key? key,
    required this.episodeName,
    required this.buttonLabel,
    // required this.episodeViewModel,
  }) : super(key: key);

  @override
  State<DecisionButton> createState() => _DecisionButtonState();
}

class _DecisionButtonState extends State<DecisionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('episode', widget.episodeName);
          Episode episode = ListEpisodes().getEpisode(widget.episodeName);
          MyHomePage.episodeViewModel.loadEpisode(episode);
          MyHomePage.scrollController.animateTo(
            0.0,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.3),
                  ]),
              // color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.white30,
                width: 2,
              ),
            ),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Text(
                  widget.buttonLabel,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'FireSansCondensed',
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(213, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
