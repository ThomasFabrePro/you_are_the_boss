//this class is only used to retrieve the current episode when user reconnects to the app
import 'package:you_are_the_boss/episodes/first_episode.dart';
import 'package:you_are_the_boss/episodes/nap_time.dart';
import 'package:you_are_the_boss/episodes/second_episode.dart';
import 'package:you_are_the_boss/models/episode.dart';

class ListEpisodes {
  Episode getEpisode(String uuid) {
    switch (uuid) {
      case "FirstEpisode":
        return FirstEpisode();
      case "SecondEpisode":
        return SecondEpisode();
      case "NapTime":
        return NapTime();
      default:
        return FirstEpisode();
    }
  }
}
