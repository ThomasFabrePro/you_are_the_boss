import 'package:you_are_the_boss/widgets/decision_button.dart';

class Episode {
  // final String uuid;
  final String title;
  final String content;
  final List<DecisionButton> decisionButtons;
  Episode(
      {
      // required this.uuid,
      required this.title,
      required this.content,
      required this.decisionButtons});
}
