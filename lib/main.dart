import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/classes/list_episodes.dart';
import 'package:you_are_the_boss/view_models/episode_view_model.dart';

void main() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? episodeRef = prefs.getString('episode');
  print("TEST episodeRef: $episodeRef");
  Episode episode = ListEpisodes().getEpisode(episodeRef ?? "FirstEpisode");
  runApp(MyApp(episode: episode));
}

class MyApp extends StatelessWidget {
  final Episode episode;

  const MyApp({super.key, required this.episode});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La boite dont vous êtes le boss',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'La boite dont vous êtes le boss',
        episode: episode,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static final EpisodeViewModel episodeViewModel = EpisodeViewModel();
  final Episode episode;
  final String title;
  const MyHomePage({super.key, required this.title, required this.episode});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  EpisodeViewModel episodeViewModel = MyHomePage.episodeViewModel;
  late Episode episode;
  @override
  void initState() {
    super.initState();
    episode = widget.episode;
    loadEpisode(episode);
  }

  @override
  void dispose() {
    episodeViewModel.dispose();
    super.dispose();
  }

  Future<void> loadEpisode(Episode? episode) async {
    await episodeViewModel.loadEpisode(episode);
  }

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width);
    double height = (MediaQuery.of(context).size.height);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Center(child: Text(widget.title)),
      // ),
      body: Center(
          child: StreamBuilder<bool>(
        stream: episodeViewModel.isLoading,
        builder: (context, snapshot) {
          final isLoading = snapshot.data ?? false;
          return isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : StreamBuilder<Episode>(
                  stream: episodeViewModel.episodeStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final episode = snapshot.data!;
                      List decisionButtons = episode.decisionButtons;
                      return Container(
                        width: width,
                        height: height,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(161, 7, 123, 138),
                              Colors.white
                            ],
                            begin: Alignment(1, -1),
                            end: Alignment(-1, 1),
                          ),
                        ),
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            Container(
                              color: const Color.fromRGBO(25, 49, 127, 1),
                              width: width,
                              height: 80,
                              child: FittedBox(
                                child: Center(
                                  child: Text(episode.title,
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 80),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 1000,
                                    ),
                                    // width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(episode.content,
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  ...decisionButtons,
                                ],
                              ),
                            ),
                          ],
                        )),
                      );
                    } else if (snapshot.hasError) {
                      // Handle the error state
                      return Text('Error: ${snapshot.error}');
                    } else {
                      // Handle the initial state when data is not available yet
                      return const CircularProgressIndicator();
                    }
                  },
                );
        },
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
