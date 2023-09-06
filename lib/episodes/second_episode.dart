import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class SecondEpisode extends Episode {
  SecondEpisode()
      : super(
          // uuid: "second_episode",
          title: "Second episode",
          content: "This is the second episode of the game",
          decisionButtons: const [
            DecisionButton(
              episodeUuid: "FirstEpisode",
              buttonLabel: "Go to first episode",
            ),
          ],
        );
}
