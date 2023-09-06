import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class NapTime extends Episode {
  NapTime()
      : super(
          // uuid: "second_episode",
          title: "Repos",
          content:
              """   Vous vous installez confortablement dans votre fauteuil, convaincu que quelques minutes de repos vous permettront d'aborder la réunion avec toute l'énergie nécessaire. Les yeux se ferment lentement, et vous sombrez dans un rêve étrange où des oiseaux chantent des mélodies codées et où votre tablette devient soudainement une porte vers un monde mystérieux.

    Cependant, ce rêve onirique ne dure pas éternellement. Vous êtes brusquement réveillé par un de vos collaborateurs, paniqué, qui vous informe que la réunion a déjà commencé sans vous. Vous jetez un coup d'œil à l'horloge et réalisez avec un serrement au cœur que vous avez trop dormi. Votre toute première réunion, le moment crucial pour présenter votre vision, a déjà commencé sans vous. Vous vous précipitez hors de la salle de repos, laissant derrière vous votre sieste interrompue, et espérez que vous pourrez rattraper ce retard.
              
    En entrant dans la salle de réunion, vous pouvez sentir une tension dans l'air. Vos collaborateurs vous lancent des regards interrogateurs, et vous vous excusez rapidement pour votre retard. Vous débutez la présentation mais il est difficile de masquer votre embarras. Malheureusement, le début chaotique a perturbé le rythme de la réunion, et vous avez du mal à vous faire comprendre sur certains points.

    Malgré cet incident, vous parvenez à couvrir les principaux points de votre présentation. Vous parlez de la mission de la startup, de la vision pour l'avenir et des caractéristiques uniques de la tablette. Cependant, il est clair que l'énergie positive et l'enthousiasme initial ont été quelque peu entamés.

    À la fin de la réunion, vous vous sentez quelque peu déçu par cette entrée en matière difficile. Cependant, vous êtes déterminé à apprendre de cette expérience et à vous rattraper lors des prochaines réunions. Vous espérez que le potentiel de votre startup continuera à briller malgré ce faux départ.   
              """,
          decisionButtons: const [
            DecisionButton(
              episodeUuid: "FirstEpisode",
              buttonLabel: "Go to first episode",
            ),
          ],
        );
}
