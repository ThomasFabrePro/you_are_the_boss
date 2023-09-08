//this class is only used to retrieve the current episode when user reconnects to the app
import 'package:you_are_the_boss/episodes/first_choice.dart';
import 'package:you_are_the_boss/episodes/first_episode.dart';
import 'package:you_are_the_boss/episodes/second_choice.dart';
import 'package:you_are_the_boss/episodes/third_choice.dart';
import 'package:you_are_the_boss/models/episode.dart';

class ListEpisodes {
  Episode getEpisode(String uuid) {
    switch (uuid) {
      case "FirstEpisode":
        return FirstEpisode();
      case "FirstChoiceOne":
        return FirstChoiceOne();
      case "FirstChoiceTwo":
        return FirstChoiceTwo();
      //second
      case "SecondChoiceOne":
        return SecondChoiceOne();
      case "SecondChoiceTwo":
        return SecondChoiceTwo();
      case "SecondChoiceThree":
        return SecondChoiceThree();
      case "SecondChoiceFour":
        return SecondChoiceFour();
      case "SecondChoiceFive":
        return SecondChoiceFive();
      case "SecondChoiceSix":
        return SecondChoiceSix();
      //third
      case "ThirdChoiceOne":
        return ThirdChoiceOne();
      case "ThirdChoiceTwo":
        return ThirdChoiceTwo();
      case "ThirdChoiceThree":
        return ThirdChoiceThree();
      case "ThirdChoiceFour":
        return ThirdChoiceFour();
      case "ThirdChoiceFive":
        return ThirdChoiceFive();
      case "ThirdChoiceSix":
        return ThirdChoiceSix();
      case "ThirdChoiceSeven":
        return ThirdChoiceSeven();
      case "ThirdChoiceEight":
        return ThirdChoiceEight();
      case "ThirdChoiceNine":
        return ThirdChoiceNine();
      case "ThirdChoiceTen":
        return ThirdChoiceTen();
      case "ThirdChoiceEleven":
        return ThirdChoiceEleven();
      case "ThirdChoiceTwelve":
        return ThirdChoiceTwelve();
      case "ThirdChoiceThirteen":
        return ThirdChoiceThirteen();
      default:
        return FirstEpisode();
    }
  }
}
