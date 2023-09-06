import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class SecondEpisode extends Episode {
  SecondEpisode()
      : super(
          // uuid: "second_episode",
          title: "Votre première réunion",
          content: """
    Vous décidez de ne pas céder à la tentation de la sieste et préférez vous plonger dans les derniers détails de la réunion à venir. Vous révisez une dernière fois votre présentation, mettant en avant la mission et la vision de votre startup, ainsi que les caractéristiques innovantes de la tablette qui fera la différence pour nos aînés.

    La réunion elle-même est un moment d'excitation et de partage. Vous parlez de la passion qui vous anime pour ce projet, de l'impact positif qu'il peut avoir sur la vie des personnes âgées et de leur entourage. Vous abordez les sujets clés, tels que la stratégie de lancement, le développement de l'application et les premiers pas sur le marché.

    L'équipe est attentive, posant des questions pertinentes et exprimant son enthousiasme. À la fin de la réunion, vous ressentez une vague de satisfaction en constatant que votre vision a été bien reçue. Les membres de votre équipe sont alignés sur les objectifs, et vous êtes tous prêts à travailler ensemble pour faire de cette startup une réussite.
              """,
          decisionButtons: const [
            DecisionButton(
              episodeUuid: "FirstEpisode",
              buttonLabel: "Go to first episode",
            ),
          ],
        );
}
