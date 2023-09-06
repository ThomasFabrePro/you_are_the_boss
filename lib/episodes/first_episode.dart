import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class FirstEpisode extends Episode {
  FirstEpisode()
      : super(
          // uuid: "first_episode",
          title: "First episode",
          content: "This is the first episode of the game",
          decisionButtons: const [
            DecisionButton(
                episodeUuid: "SecondEpisode",
                buttonLabel: "Go to second episode"),
          ],
        );
}
