import 'package:you_are_the_boss/models/episode.dart';
import 'package:you_are_the_boss/widgets/decision_button.dart';

class SecondChoiceOne extends Episode {
  SecondChoiceOne()
      : super(
          leadershipPoints: 80,
          teamMotivationPoints: 85,
          moneyPoints: 25,
          sleepPoints: 60,
          content:
              """     Vous rassemblez votre équipe dans un effort collectif pour rattraper le temps perdu. Cependant, la réunion de rattrapage se déroule dans la précipitation, ce qui affecte la qualité de la présentation. Certains membres de l'équipe expriment leur frustration quant à cette situation imprévue, chaque minute compte et votre entreprise perd déjà du temps. Bien que vous ayez réussi à couvrir les points principaux, il est clair que le manque de préparation initial a eu un impact sur la réunion et a laissé un sentiment d'insatisfaction.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThridChoiceOne",
              buttonLabel:
                  "Vous décidez de travailler tard pour rattraper le temps perdu et préparer le lancement de la tablette",
            ),
            DecisionButton(
              episodeName: "ThridChoiceOne",
              buttonLabel:
                  "Vous sollicitez des retours d'expérience de vos collègues pour améliorer la présentation lors de la prochaine réunion",
            ),
          ],
        );
}

class SecondChoiceTwo extends Episode {
  SecondChoiceTwo()
      : super(
          leadershipPoints: 90,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 60,
          content:
              """     Vous assumez la responsabilité de votre retard et présentez des excuses sincères à votre équipe. Cependant, en raison de l'incident de retard initial, la réunion elle-même est marquée par un certain malaise initial. Votre équipe accepte vos excuses, mais le manque de préparation a eu un impact sur la qualité de la présentation. Les membres de l'équipe sont enclins à vous donner une seconde chance, mais ils attendent des actions concrètes pour regagner leur confiance.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThirdChoiceThree",
              buttonLabel:
                  "Vous décidez de prendre du temps pour réfléchir à la manière de développer votre entreprise à long terme",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceFour",
              buttonLabel:
                  "Vous conviez certains membres de l'équipe à une session de brainstorming pour explorer de nouvelles idées",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceFive",
              buttonLabel:
                  "Vous prenez un moment pour féliciter individuellement les membres de l'équipe pour leur contribution à la réunion",
            ),
          ],
        );
}

class SecondChoiceThree extends Episode {
  SecondChoiceThree()
      : super(
          leadershipPoints: 90,
          teamMotivationPoints: 95,
          moneyPoints: 25,
          sleepPoints: 60,
          content:
              """     Après l'incident du retard, vous prenez du recul pour réfléchir à la manière dont vous pouvez regagner la confiance de votre équipe. Vous réalisez que votre leadership a été entachée et que votre équipe est quelque peu surprise. Vous décidez de convoquer une réunion spéciale pour discuter de l'incident et des leçons à en tirer. Lors de cette réunion franche et honnête, vous partagez vos réflexions sur la manière dont vous pouvez améliorer votre leadership et renforcer l'esprit d'équipe. Votre équipe apprécie votre humilité et votre désir de progresser.
                Bien que des conséquences négatives aient découlé de l'incident, cette démarche ouvre la voie à une communication plus ouverte et à un renforcement des liens au sein de l'équipe. Vous vous engagez à ce que cela ne se reproduise plus, et l'équipe est disposée à vous donner une seconde chance.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThirdChoiceSix",
              buttonLabel:
                  "Vous convoquez une réunion spéciale pour discuter de l'incident et des leçons à en tirer",
            ),
          ],
        );
}

class SecondChoiceFour extends Episode {
  SecondChoiceFour()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 45,
          content:
              """     Vous ressentez la fatigue s'installer progressivement après cette réunion réussie. Cependant, vous avez la possibilité de prendre un court repos pour vous ressourcer ou de continuer directement avec le déjeuner d'équipe. La fatigue n'est pas écrasante, mais elle se fait ressentir, et vous savez que votre choix aura un impact sur votre participation à la célébration à venir.

      Vous regardez l'horloge, évaluant combien de temps vous pourriez prendre pour vous reposer. L'idée d'un court sommeil de quelques minutes semble attrayante, mais en même temps, vous ne voulez pas manquer l'occasion de renforcer les liens avec vos collègues lors de ce déjeuner. Le temps passe rapidement, et vous devez prendre une décision : un court repos pour recharger vos batteries ou passer directement au déjeuner pour ne pas manquer cette opportunité de socialisation avec votre équipe.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThirdChoiceSeven",
              buttonLabel:
                  "Vous décidez de prendre un court repos pour vous ressourcer avant le déjeuner d'équipe",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceEight",
              buttonLabel:
                  "Vous choisissez de participer au déjeuner d'équipe au plus vite malgré la fatigue, ne voulant pas manquer l'occasion de renforcer les liens avec vos collègues",
            ),
          ],
        );
}

class SecondChoiceFive extends Episode {
  SecondChoiceFive()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 45,
          content:
              """     Après la réunion, vous vous lancez directement dans l'exécution de la stratégie discutée, mettant l'accent sur le développement de la tablette et la recherche de partenariats. Bien que vous ressentiez une légère fatigue due à un manque de sommeil, votre détermination reste intacte. Votre équipe apprécie votre engagement et votre vision pour l'avenir, même si cette première journée a été parsemée de défis. Vous réalisez que, malgré les obstacles, vous pouvez compter sur le soutien de votre équipe pour faire progresser la startup.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThirdChoiceNine",
              buttonLabel:
                  "Vous sollicitez des membres de l'équipe pour vous aider à mettre en œuvre la stratégie plus rapidement",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceTen",
              buttonLabel:
                  "Vous décidez de mettre en place un plan d'exécution détaillé pour suivre la stratégie discutée lors de la réunion",
            ),
          ],
        );
}

class SecondChoiceSix extends Episode {
  SecondChoiceSix()
      : super(
          leadershipPoints: 100,
          teamMotivationPoints: 100,
          moneyPoints: 25,
          sleepPoints: 45,
          content:
              """     Après la réunion, vous invitez certains membres clés de l'équipe à une réunion informelle pour approfondir certains des sujets abordés lors de la réunion principale. Cette discussion approfondie permet d'affiner les idées et de prendre des décisions stratégiques plus éclairées. Bien que vous ressentiez une légère fatigue due à un manque de sommeil, votre équipe reconnaît l'importance de ces discussions et apprécie votre engagement à explorer des solutions innovantes dès le premier jour. Même si ce n'est que le début, cette expérience renforce la collaboration au sein de l'équipe et rappelle à tous que la réussite de la startup repose sur l'effort collectif.""",
          decisionButtons: const [
            DecisionButton(
              episodeName: "ThirdChoiceEleven",
              buttonLabel:
                  "Vous décidez de mettre en place un petit groupe de travail dédié pour explorer en profondeur les sujets abordés lors de la réunion",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceTwelve",
              buttonLabel:
                  "Vous sollicitez des retours d'expérience de vos collègues pour bénéficier de leurs idées sur la manière d'améliorer la présentation lors de la prochaine réunion",
            ),
            DecisionButton(
              episodeName: "ThirdChoiceThirteen",
              buttonLabel:
                  "Vous prenez un moment pour féliciter individuellement les membres de l'équipe pour leur contribution à la réunion",
            ),
          ],
        );
}
