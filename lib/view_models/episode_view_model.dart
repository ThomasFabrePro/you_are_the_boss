import 'package:you_are_the_boss/episodes/first_episode.dart';
import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/view_models/base_view_model.dart';

class EpisodeViewModel extends BaseViewModel {
  Episode _episode = FirstEpisode();

  // Getter for accessing the episode data
  Episode get episode => _episode;

  set episode(Episode episode) {
    _episode = episode;
  }

  Future<void> loadEpisode(Episode? episodeToLoad) async {
    setLoading(true);
    episode = episodeToLoad ?? FirstEpisode();
    setEpisode(episode);
    setLoading(false);
  }
}
