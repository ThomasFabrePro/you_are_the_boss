import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class FirstChoiceOne extends Episode {
  FirstChoiceOne()
      : super(
          leadershipPoints: 85,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 70,
          content:
              """   Vous vous installez confortablement dans votre fauteuil, convaincu que quelques minutes de repos vous permettront d'aborder la réunion avec toute l'énergie nécessaire. Les yeux se ferment lentement, et vous sombrez dans un rêve étrange où des oiseaux chantent des mélodies codées et où votre tablette devient soudainement une porte vers un monde mystérieux.

    Cependant, ce rêve onirique ne dure pas éternellement. Vous êtes brusquement réveillé par un de vos collaborateurs, paniqué, qui vous informe que la réunion a déjà commencé sans vous. Vous jetez un coup d'œil à l'horloge et réalisez avec un serrement au cœur que vous avez trop dormi. Votre toute première réunion, le moment crucial pour présenter votre vision, a déjà commencé sans vous. Vous vous précipitez hors de la salle de repos, laissant derrière vous votre sieste interrompue, et espérez que vous pourrez rattraper ce retard.
              
    En entrant dans la salle de réunion, vous pouvez sentir une tension dans l'air. Vos collaborateurs vous lancent des regards interrogateurs, et vous vous excusez rapidement pour votre retard. Vous débutez la présentation mais il est difficile de masquer votre embarras. Malheureusement, le début chaotique a perturbé le rythme de la réunion, et vous avez du mal à vous faire comprendre sur certains points.

    Malgré cet incident, vous parvenez à couvrir les principaux points de votre présentation. Vous parlez de la mission de la startup, de la vision pour l'avenir et des caractéristiques uniques de la tablette. Cependant, il est clair que l'énergie positive et l'enthousiasme initial ont été quelque peu entamés.

    À la fin de la réunion, vous vous sentez quelque peu déçu par cette entrée en matière difficile. Cependant, vous êtes déterminé à apprendre de cette expérience et à vous rattraper lors des prochaines réunions. Vous espérez que le potentiel de votre startup continuera à briller malgré ce faux départ.   
              """,
          decisionButtons: const [
            DecisionButton(
              episodeName: "SecondChoiceOne",
              buttonLabel:
                  "Travailler en équipe pour rattraper le temps perdu et organiser une réunion de rattrapage immédiatement",
            ),
            DecisionButton(
              episodeName: "SecondChoiceTwo",
              buttonLabel:
                  "Présenter des excuses à votre équipe et planifier la prochaine réunion avec plus de rigueur",
            ),
            DecisionButton(
              episodeName: "SecondChoiceThree",
              buttonLabel:
                  "Prendre du recul et de réfléchir à la manière dont vous pouvez regagner la confiance de votre équipe",
            ),
          ],
        );
}

class FirstChoiceTwo extends Episode {
  FirstChoiceTwo()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 60,
          content: """
    Vous décidez de ne pas céder à la tentation de la sieste et préférez vous plonger dans les derniers détails de la réunion à venir. Vous révisez une dernière fois votre présentation, mettant en avant la mission et la vision de votre startup, ainsi que les caractéristiques innovantes de la tablette qui fera la différence pour nos aînés.

    La réunion elle-même est un moment d'excitation et de partage. Vous parlez de la passion qui vous anime pour ce projet, de l'impact positif qu'il peut avoir sur la vie des personnes âgées et de leur entourage. Vous abordez les sujets clés, tels que la stratégie de lancement, le développement de l'application et les premiers pas sur le marché.

    L'équipe est attentive, posant des questions pertinentes et exprimant son enthousiasme. À la fin de la réunion, vous ressentez une vague de satisfaction en constatant que votre vision a été bien reçue. Les membres de votre équipe sont alignés sur les objectifs, et vous êtes tous prêts à travailler ensemble pour faire de cette startup une réussite.
              """,
          decisionButtons: const [
            DecisionButton(
              episodeName: "SecondChoiceFour",
              buttonLabel:
                  "Célébrer le succès de la réunion en organisant un déjeuner d'équipe",
            ),
            DecisionButton(
              episodeName: "SecondChoiceFive",
              buttonLabel:
                  "Exécuter la stratégie évoquée lors de la réunion, en mettant l'accent sur le développement de la tablette et la recherche de partenariats.",
            ),
            DecisionButton(
              episodeName: "SecondChoiceSix",
              buttonLabel:
                  "Demander à des membres de l'équipe de vous rejoindre pour discuter plus en détail de certains sujets abordés lors de la réunion, afin d'approfondir les idées",
            ),
          ],
        );
}
