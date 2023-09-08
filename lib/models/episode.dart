import 'package:you_are_the_boss/widgets/decision_button.dart';

class Episode {
  final String content;
  final List<DecisionButton> decisionButtons;
  final int? leadershipPoints;
  final int? teamMotivationPoints;
  final int? moneyPoints;
  final int? sleepPoints;
  Episode({
    required this.content,
    required this.decisionButtons,
    this.leadershipPoints,
    this.teamMotivationPoints,
    this.moneyPoints,
    this.sleepPoints,
  });
}
