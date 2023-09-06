import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class FirstEpisode extends Episode {
  FirstEpisode()
      : super(
          title: "Le grand Départ",
          content: """
    Bienvenue dans le monde excitant de la création d'une startup ! Vous incarnez le rôle du chef d'orchestre de cette aventure passionnante, où l'innovation technologique rencontre la bienveillance envers nos aînés. Vous êtes aux commandes d'une startup prometteuse qui conçoit et commercialise une tablette numérique révolutionnaire, conçue spécialement pour simplifier la vie des personnes âgées.

    C'est le tout premier jour de cette aventure extraordinaire. Les murs de votre bureau, encore vierges de toute décoration, résonnent de promesses et d'opportunités. Vous caressez doucement la peinture fraîche en vous disant « Yesss voilà la plus grande aventure de ma vie... J'ai hâte ! » Vous pouvez presque sentir l'excitation palpable dans l'air, l'énergie bouillonnante qui émane de chaque membre de votre équipe, prêt à transformer cette vision en réalité.

    Votre produit est bien plus qu'une simple tablette. C'est un compagnon numérique conçu pour rendre la vie quotidienne de nos aînés plus facile, plus joyeuse et plus connectée. Elle leur rappellera avec douceur leurs rendez-vous médicaux, jouera leurs chansons préférées d'un simple toucher d'écran, et même leur enverra des photos chaleureuses de leurs proches, comblant ainsi le fossé entre générations.

    Alors que vous vous apprêtez à tracer les premiers contours de cette entreprise novatrice, rappelez-vous que chaque idée, chaque décision que vous prendrez marquera l'avenir de votre startup. L'enthousiasme brille dans les yeux de votre équipe, et vous êtes prêt à relever les défis avec détermination.

    Le voyage commence ici, à la croisée de la technologie et de la compassion, où chaque pas vous rapprochera de la réalisation de votre vision. Préparez-vous à écrire l'histoire de cette startup avec chaque ligne de code, chaque sourire des personnes âgées que vous aiderez, et chaque moment d'enthousiasme partagé. L'avenir est entre vos mains, et il s'annonce radieux.

Vos collaborateurs sont prêts et l'heure de votre première réunion ne va pas tarder à sonner.
""",
          decisionButtons: const [
            DecisionButton(
                episodeUuid: "NapTime",
                buttonLabel:
                    "Vous décidez de faire une sieste de 10 minutes pour commencer la réunion en pleine forme. Il faut donner l'exemple !"),
            DecisionButton(
                episodeUuid: "SecondEpisode",
                buttonLabel:
                    "Vous préparez les derniers détails de la réunion. Vous avez hâte de présenter votre vision à l'équipe !"),
          ],
        );
}
