import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class ThirdChoiceOne extends Episode {
  ThirdChoiceOne()
      : super(
          leadershipPoints: 95,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 40,
          content:
              """     Vous décidez de travailler tard pour rattraper le temps perdu et préparer le lancement de la tablette. Malgré le retard initial, votre détermination à faire avancer la startup est inébranlable. Vous vous concentrez sur la préparation du lancement de la tablette, en fixant des échéances strictes pour les différentes étapes. Votre équipe vous soutient pleinement dans cet effort, comprenant l'importance de rattraper le temps perdu.

      Cependant, à mesure que la fatigue s'accumule, vous devez faire face à une décision cruciale. Votre bien-être commence à être compromis, et vous sentez que votre efficacité diminue. Vous pouvez continuer à travailler tard pour respecter les échéances, mais cela risque de vous épuiser davantage. Ou bien, vous pouvez décider de rentrer chez vous et revenir avec un esprit frais. Le choix que vous faites aura un impact sur votre santé à court terme et sur le succès à long terme de la startup.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceTwo extends Episode {
  ThirdChoiceTwo()
      : super(
          leadershipPoints: 95,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 50,
          content:
              """     Reconnaissant les défis rencontrés lors de la réunion précédente, vous décidez de solliciter les retours d'expérience de vos collègues. Vous organisez une réunion informelle où chacun peut partager ses points de vue et ses suggestions pour améliorer la présentation lors de la prochaine réunion.
      
      Votre équipe se montre coopérative et enthousiaste à l'idée de contribuer à l'amélioration de la présentation. Les idées fusent, et vous prenez des notes pour vous assurer de ne rien oublier. Cependant, à mesure que la réunion avance, vous réalisez que vous avez beaucoup de suggestions à trier et à intégrer dans la présentation. Vous devrez décider quelles idées sont les plus pertinentes et comment les incorporer de manière cohérente. C'est un défi, mais vous êtes déterminé à tirer le meilleur parti des retours d'expérience de votre équipe pour la prochaine réunion.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceThree extends Episode {
  ThirdChoiceThree()
      : super(
          leadershipPoints: 90,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 55,
          content:
              """     Vous prenez du temps pour réfléchir à la manière de développer votre entreprise à long terme. Les idées affluent alors que vous envisagez de nouvelles stratégies et opportunités de croissance.
      
      Cependant, avec la journée déjà bien avancée, vous êtes confronté à un choix crucial : allez-vous vous concentrer sur l'expansion de la gamme de produits ou chercher de nouveaux marchés à conquérir ? La pression du temps et les attentes de votre équipe pèsent sur vos épaules, et vous devez prendre une décision éclairée pour orienter l'avenir de la startup.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceFour extends Episode {
  ThirdChoiceFour()
      : super(
          leadershipPoints: 90,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 50,
          content:
              """     Vous choisissez d'organiser une session de brainstorming avec certains membres de l'équipe. Ensemble, vous explorez de nouvelles idées pour stimuler la croissance de la startup.

      Cependant, votre légère fatigue commence à se faire sentir, ce qui pourrait influencer la créativité du groupe. Vous devez décider de la manière de gérer cette session pour maximiser la productivité et l'innovation de l'équipe. Allez-vous encourager des pauses fréquentes pour garder tout le monde frais d'esprit, ou préférez-vous poursuivre sans interruption pour maintenir le dynamisme ? Votre choix aura un impact sur la qualité des idées générées et sur l'enthousiasme de votre équipe.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceFive extends Episode {
  ThirdChoiceFive()
      : super(
          leadershipPoints: 85,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 60,
          content:
              """     Après la réunion, vous décidez de prendre un moment pour féliciter individuellement les membres de l'équipe pour leur contribution à la réussite de la réunion. Cette approche renforce les liens et la reconnaissance au sein de l'équipe, créant un climat positif.

      Cependant, vous devez ensuite décider si vous souhaitez aborder des sujets spécifiques, tels que les défis à relever, ou discuter de l'avenir de la startup avec chaque membre. Votre choix influencera la manière dont votre équipe perçoit votre leadership et son engagement envers la croissance de l'entreprise.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceSix extends Episode {
  ThirdChoiceSix()
      : super(
          leadershipPoints: 95,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 60,
          content:
              """     Face à l'incident du retard qui a surpris votre équipe, vous décidez de convoquer une réunion spéciale pour aborder ouvertement le petit incident et les leçons à en tirer. Lors de cette réunion franche et honnête, vous partagez vos réflexions sur la manière dont vous pouvez améliorer votre leadership et renforcer l'esprit d'équipe. Votre équipe apprécie votre humilité et votre désir sincère de progresser.

      Cette démarche montre votre engagement envers la transparence et l'amélioration. La réunion renforce les liens au sein de l'équipe et ouvre la voie à une communication plus ouverte. Vous vous engagez à travailler dur pour ne plus jamais répéter une telle erreur, et votre équipe est disposée à vous donner une seconde chance. Cependant, il reste à déterminer comment vous allez concrètement regagner la confiance de l'équipe au fil du temps.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceSeven extends Episode {
  ThirdChoiceSeven()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 80,
          content:
              """     Avant de rejoindre vos collègues pour le déjeuner d'équipe prévu pour célébrer le succès initial, vous décidez de prendre un court repos bien mérité pour vous ressourcer. Cette pause vous permet de vous revitaliser et de recharger vos batteries. À votre retour au déjeuner, vous êtes plus alerte et prêt à participer activement à la célébration. Votre décision de prendre soin de vous montre votre souci du bien-être, tout en participant pleinement à la célébration.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "fin",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "fin",
            ),
          ],
        );
}

class ThirdChoiceEight extends Episode {
  ThirdChoiceEight()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 35,
          content:
              """     Malgré votre fatigue, vous décidez de participer au déjeuner d'équipe. Vous ne voulez pas manquer cette opportunité de renforcer les liens avec vos collègues et de célébrer le succès initial de la startup. Cependant, vous êtes conscient que votre épuisement peut influencer votre enthousiasme et votre capacité à profiter pleinement de la célébration. Votre présence témoigne de votre engagement envers l'équipe, même dans des moments de fatigue, mais il reste à voir comment vous gérerez cette situation particulière pour que la célébration soit mémorable et bénéfique pour tous.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceNine extends Episode {
  ThirdChoiceNine()
      : super(
          leadershipPoints: 95,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 35,
          content:
              """     Vous sollicitez l'aide de certains membres clés de l'équipe pour mettre en œuvre la stratégie plus rapidement. Vous êtes conscient que le temps est essentiel, surtout dans le monde compétitif des startups, et que la réussite de votre entreprise dépend de sa capacité à se développer rapidement. En collaborant étroitement avec vos collègues, vous abordez activement le développement de la tablette et la recherche de partenariats. Cette décision montre votre volonté de travailler en équipe pour atteindre les objectifs fixés, même si vous ressentez une légère fatigue due au manque de sommeil. Ensemble, vous espérez réaliser des progrès significatifs dans la mise en œuvre de la stratégie.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceTen extends Episode {
  ThirdChoiceTen()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 30,
          content:
              """     Préférant une approche méthodique, vous choisissez de mettre en place un plan d'exécution détaillé pour suivre la stratégie discutée lors de la réunion. Vous estimez qu'une planification rigoureuse est essentielle pour maximiser les chances de succès à long terme. Cependant, vous commencez à ressentir les effets du manque de sommeil, ce qui peut affecter votre capacité à élaborer un plan exhaustif. Malgré cela, vous êtes déterminé à créer un plan solide et à travailler avec votre équipe pour le mettre en œuvre, même si cela signifie gérer la fatigue à court terme pour assurer le succès à long terme de la startup.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceEleven extends Episode {
  ThirdChoiceEleven()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 40,
          content:
              """     Vous choisissez de mettre en place un petit groupe de travail dédié pour explorer en profondeur les sujets abordés lors de la réunion. Cette équipe se compose de membres clés de votre équipe qui travailleront en étroite collaboration pour analyser les détails et trouver des solutions innovantes. L'idée est d'approfondir chaque sujet pour mieux comprendre les défis et les opportunités qui se présentent. Cependant, en raison de votre légère fatigue due au manque de sommeil, vous devrez gérer votre énergie pour rester impliqué dans le processus de réflexion approfondie. Vous êtes conscient que le succès de cette approche dépend de votre capacité à maintenir votre concentration malgré la fatigue.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceTwelve extends Episode {
  ThirdChoiceTwelve()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 35,
          content:
              """     Reconnaissant les défis rencontrés lors de la réunion précédente, vous décidez de solliciter les retours d'expérience de vos collègues. Vous espérez obtenir des idées précieuses pour améliorer la présentation lors de la prochaine réunion. Votre équipe se montre coopérative et partage volontiers ses points de vue. Cependant, vous réalisez que vous devrez faire preuve de discernement pour intégrer efficacement ces retours d'expérience dans votre approche. La fatigue légère due au manque de sommeil pourrait influencer votre capacité à prendre des décisions judicieuses, vous devez donc vous efforcer de rester concentré et objectif.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceThirteen extends Episode {
  ThirdChoiceThirteen()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 40,
          content:
              """     Après la réunion, vous décidez de prendre un moment pour féliciter individuellement les membres de l'équipe pour leur contribution à la réunion réussie. Cette approche renforce les liens et la reconnaissance au sein de l'équipe, créant un environnement positif. Cependant, vous devez ensuite décider si vous souhaitez aborder des sujets spécifiques ou discuter de l'avenir de la startup avec vos collègues. Votre légère fatigue peut influencer la manière dont vous menez ces conversations, alors vous vous efforcez d'être aussi clair et constructif que possible pour maintenir la dynamique positive que vous avez établie.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Rentrer vous reposer",
            ),
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Terminer le travail",
            ),
          ],
        );
}

class ThirdChoiceFourteen extends Episode {
  ThirdChoiceFourteen()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 65,
          content:
              """     Après avoir pesé les options qui s'offraient à vous, vous décidez de consacrer le reste de votre journée à la recherche de nouveaux investisseurs pour votre startup. Vous réalisez que le financement est crucial pour la croissance de votre entreprise naissante, et chaque moment compte. Vous commencez par passer des annonces sur les réseaux sociaux, présentant votre vision et les opportunités d'investissement. Vous utilisez vos contacts et appelez des connaissances susceptibles d'être intéressées par votre projet, partageant avec enthousiasme les réalisations récentes de votre startup. Cette démarche proactive porte ses fruits, et vous recevez plusieurs retours positifs de personnes intéressées à en savoir plus sur votre entreprise.

      Au fur et à mesure que la journée avance, vous organisez également une session de réflexion interne pour définir une stratégie de recherche d'investisseurs plus ciblée. Vous identifiez des listes de partenaires potentiels, de fonds d'investissement et de business angels qui pourraient correspondre à votre secteur d'activité et à votre vision. Vous prévoyez des rendez-vous et des présentations pour les jours à venir, et vous avez le sentiment d'avancer dans la bonne direction.

      Votre journée se termine par un sentiment de satisfaction, car vous avez jeté les bases d'une recherche de financement plus systématique et prometteuse. Vous êtes prêt à relever le défi de convaincre de nouveaux investisseurs de rejoindre votre aventure entrepreneuriale.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Fin",
            ),
          ],
        );
}

class ThirdChoiceFifteen extends Episode {
  ThirdChoiceFifteen()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 65,
          content:
              """     Vous décidez de consacrer le reste de la journée à l'amélioration de votre présentation grâce aux retours collectés. Vous réalisez que la manière dont vous communiquez votre vision et votre proposition de valeur est cruciale pour attirer l'attention des investisseurs et des partenaires potentiels. Vous prenez le temps d'analyser en profondeur les retours d'expérience partagés par votre équipe, triant les idées les plus pertinentes pour améliorer votre présentation.

      Ensuite, vous commencez à réorganiser votre discours, en mettant l'accent sur les aspects qui ont suscité le plus d'intérêt et de réactions positives lors de la réunion précédente. Vous créez de nouveaux visuels et graphiques pour renforcer votre argumentaire et clarifier vos messages. La journée passe rapidement à mesure que vous peaufinez chaque diapositive et que vous vous exercez à la présentation.

      En fin de journée, vous avez le sentiment que votre présentation a gagné en clarté et en impact. Vous avez défini un marché cible plus précis et affiné votre proposition de valeur. Bien que vous n'ayez pas encore rencontré de nouveaux investisseurs, vous êtes convaincu que votre capacité à captiver leur attention lors de futures présentations a considérablement augmenté. Vous terminez la journée avec une confiance renouvelée dans votre projet et dans votre capacité à le présenter avec succès aux investisseurs potentiels.""",
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Fin",
            ),
          ],
        );
}

class ThirdChoiceSixteen extends Episode {
  ThirdChoiceSixteen()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 65,
          content:
              """     Vous décidez de consacrer le reste de la journée à l'amélioration de votre présentation grâce aux retours collectés. Cependant, à mesure que vous plongez dans la multitude d'idées et de suggestions recueillies, vous réalisez que la tâche est plus complexe que prévu. Les retours sont nombreux et parfois contradictoires, ce qui rend difficile la sélection des éléments à intégrer dans votre présentation.

      Vous passez des heures à essayer de réorganiser votre discours, mais vous vous retrouvez rapidement submergé par la quantité d'informations. Certaines des suggestions semblent inenvisageables, tandis que d'autres sont mal retranscrites et difficilement compréhensibles. Vous commencez à ressentir de la frustration alors que le temps file.

      En fin de journée, malgré vos efforts, vous avez l'impression de ne pas avoir progressé autant que vous l'auriez souhaité. Vous êtes conscient que vous devrez peut-être solliciter l'aide d'un expert en présentation ou d'un conseiller en communication pour trier et structurer efficacement les retours d'expérience. La journée se termine avec un sentiment de défi à relever, mais vous demeurez déterminé à améliorer votre présentation, même si cela demande plus de temps et d'expertise que prévu.
          """,
          decisionButtons: const [
            //TODO setup episodes names
            DecisionButton(
              episodeName: "FirstEpisode",
              buttonLabel: "Fin",
            ),
          ],
        );
}
