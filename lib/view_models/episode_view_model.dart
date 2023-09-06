import 'package:rxdart/rxdart.dart';
import 'package:you_are_the_boss/episodes/first_episode.dart';
import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/view_models/base_view_model.dart';

class EpisodeViewModel extends BaseViewModel {
  Episode _episode = FirstEpisode();
  // Episode _episode = FirstEpisode();
  final _blocAData = BehaviorSubject<String>();
  final _blocJutsusData = BehaviorSubject<int>();

  Stream<String> get blocAData => _blocAData.stream;
  Stream<int> get blocJutsusData => _blocJutsusData.stream;
  // Getter for accessing the episode data
  Episode get episode => _episode;

  set episode(Episode episode) {
    _episode = episode;
  }

  // Method for loading the episode data from the database
  Future<void> loadEpisode(Episode? episodeToLoad) async {
    // Set the loading state to true
    setLoading(true);
    episode = episodeToLoad ?? FirstEpisode();
    setEpisode(episode);
    // Perform the database operation to load the episode
    // For example: _episode = await databaseHelper.getCharacter();

    // Set the loading state to false
    setLoading(false);
  }

  // void updateBlocJutsusData(int newChakra) {
  //   _blocJutsusData.add(newChakra);
  // }
}
