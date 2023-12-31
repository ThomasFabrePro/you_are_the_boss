import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/classes/list_episodes.dart';
import 'package:you_are_the_boss/view_models/episode_view_model.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? episodeRef = prefs.getString('episode');
  // Episode episode = ListEpisodes().getEpisode("FirstEpisode");
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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'La boite dont vous êtes le boss',
        episode: episode,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static final EpisodeViewModel episodeViewModel = EpisodeViewModel();
  static final ScrollController scrollController = ScrollController();

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
                      List<DecisionButton> decisionButtons =
                          episode.decisionButtons;

                      return Container(
                        width: width,
                        height: height,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(47, 87, 218, 1),
                              // Color.fromRGBO(37, 72, 185, 1),
                              Color.fromRGBO(25, 49, 127, 1)
                            ],
                            begin: Alignment(-1, 1),
                            end: Alignment(1, -1),
                          ),
                        ),
                        child: SingleChildScrollView(
                            controller: MyHomePage.scrollController,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: width,
                                  height: 100,
                                  child: const FittedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 2.0, horizontal: 4),
                                        child: Text("Vous Êtes Le Boss",
                                            // child: Text(episode.title,
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange,
                                                fontFamily: 'DancingScript')),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 16, left: 16, bottom: 16),
                                  child: Column(
                                    children: <Widget>[
                                      // const SizedBox(height: 20),
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 1000,
                                        ),
                                        // width: width,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 240, 240, 240),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(episode.content,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontFamily:
                                                      'FireSansCondensed')),
                                        ),
                                      ),

                                      const SizedBox(height: 20),
                                      LifeBars(
                                        leadershipPoints:
                                            episode.leadershipPoints,
                                        teamMotivationPoints:
                                            episode.teamMotivationPoints,
                                        moneyPoints: episode.moneyPoints,
                                        sleepPoints: episode.sleepPoints,
                                      ),
                                      const SizedBox(height: 20),
                                      Column(
                                        children: decisionButtons,
                                      ),
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

class LifeBars extends StatelessWidget {
  final int? leadershipPoints;
  final int? teamMotivationPoints;
  final int? moneyPoints;
  final int? sleepPoints;
  const LifeBars(
      {super.key,
      required this.leadershipPoints,
      required this.teamMotivationPoints,
      this.moneyPoints,
      this.sleepPoints});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LifeBar(
                label: "Leadership",
                width: width,
                value: leadershipPoints,
                sideAlignment: true,
              ),
              const SizedBox(height: 20),
              LifeBar(
                label: "Motivation\nde l'équipe",
                width: width,
                value: teamMotivationPoints,
                sideAlignment: true,
              ),
            ],
          ),
          // const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              LifeBar(
                label: "Finances",
                width: width,
                value: moneyPoints,
                sideAlignment: false,
              ),
              const SizedBox(height: 20),
              LifeBar(
                label: "\nSommeil",
                width: width,
                value: sleepPoints,
                sideAlignment: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LifeBar extends StatelessWidget {
  final int? value;
  final String label;
  final double width;
  final bool sideAlignment;
  final double lifeValueBoxHeight = 10;
  final double lifeValueBoxPadding = 3;
  const LifeBar(
      {super.key,
      this.value,
      required this.label,
      required this.width,
      required this.sideAlignment});

  @override
  Widget build(BuildContext context) {
    double fullBoxWidth = (width * 0.4).clamp(0, 300);
    double lifeValueBoxWidth = fullBoxWidth * (value ?? 100) / 100;

    double fullBoxHeight = (lifeValueBoxPadding * 2) + lifeValueBoxHeight;
    return value == null
        ? const SizedBox()
        : Column(
            crossAxisAlignment: sideAlignment
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Padding(
                padding: sideAlignment
                    ? const EdgeInsets.only(left: 18.0)
                    : const EdgeInsets.only(right: 18.0),
                child: Text(label,
                    style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: fullBoxWidth + lifeValueBoxPadding * 2,
                    height: fullBoxHeight,
                    // height: 20,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: sideAlignment
                              ? [
                                  Colors.white.withOpacity(0.6),
                                  Colors.white.withOpacity(0.3),
                                ]
                              : [
                                  Colors.white.withOpacity(0.3),
                                  Colors.white.withOpacity(0.6),
                                ]),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white30,
                        width: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: sideAlignment ? 0 : null,
                    right: sideAlignment ? null : 0,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        height: 10,
                        width: lifeValueBoxWidth,
                        decoration: BoxDecoration(
                          color: value == null
                              ? Colors.black
                              : value! > 75
                                  ? Colors.green
                                  : value! > 50
                                      ? const Color.fromARGB(255, 224, 205, 34)
                                      : value! > 25
                                          ? const Color.fromARGB(
                                              255, 241, 145, 1)
                                          : const Color.fromARGB(
                                              255, 204, 41, 29),
                          // color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(25),
                          // border: Border(
                          //   top: BorderSide(width: 2.0, color: Colors.black),
                          // ),
                          border: Border.all(
                            color: Colors.white30,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
