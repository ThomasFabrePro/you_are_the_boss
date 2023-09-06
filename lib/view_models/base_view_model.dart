import 'package:rxdart/rxdart.dart';
import 'package:you_are_the_boss/models/episode.dart';

abstract class BaseViewModel {
  final _isLoading = BehaviorSubject<bool>.seeded(false);
  final _episode = BehaviorSubject<Episode>();

  // Expose the isLoading stream to notify the view of loading state
  Stream<bool> get isLoading => _isLoading.stream;
  Stream<Episode> get episodeStream => _episode.stream;
  // Helper method to update the isLoading state
  void setLoading(bool isLoading) {
    _isLoading.add(isLoading);
  }

  void setEpisode(Episode episode) {
    _episode.add(episode);
  }

  // Dispose method to clean up resources
  void dispose() {
    _isLoading.close();
  }
}
