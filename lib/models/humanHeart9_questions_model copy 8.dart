class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final humanHeartList9 = [
  LayOutQuestion(
    text: "What is the purpose of the septum in the heart??",
    options: [
      const LayOutOption(
          text: "To prevent blood flow between the two sides of the heart",
          isCorrect: true),
      const LayOutOption(
          text: "To separate atria and ventricles", isCorrect: false),
      const LayOutOption(
          text: "To increase muscular thickness", isCorrect: false),
      const LayOutOption(
          text: "To facilitate blood circulation to the lungs",
          isCorrect: false),
    ],
    id: 0,
    correctAnswer: const LayOutOption(
        text: "To prevent blood flow between the two sides of the heart",
        isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Which valve is located between the right atrium and right ventricle?",
    options: [
      const LayOutOption(text: "Tricuspid valve ", isCorrect: true),
      const LayOutOption(text: "Bicuspid valve", isCorrect: false),
      const LayOutOption(text: "Pulmonary valve", isCorrect: false),
      const LayOutOption(text: "Aortic valve", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Tricuspid valve", isCorrect: true),
  ),

  LayOutQuestion(
    text: "Where does the deoxygenated blood enter the heart?",
    options: [
      const LayOutOption(text: "Left atrium ", isCorrect: false),
      const LayOutOption(text: "Left ventricle", isCorrect: false),
      const LayOutOption(text: "Right atrium", isCorrect: true),
      const LayOutOption(text: "Right ventricle", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Right atrium", isCorrect: true),
  ),

  LayOutQuestion(
    text: "What is the role of the pulmonary artery in the circulatory system?",
    options: [
      const LayOutOption(
          text: "Receiving oxygenated blood from the lungs", isCorrect: false),
      const LayOutOption(text: "Pumping blood to the body", isCorrect: false),
      const LayOutOption(text: "Pumping blood to the lungs ", isCorrect: true),
      const LayOutOption(
          text: "Receiving deoxygenated blood from the body", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Pumping blood to the lungs", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text: "Which blood vessel supplies the heart with oxygen and nutrients?",
    options: [
      const LayOutOption(text: "Pulmonary artery", isCorrect: false),
      const LayOutOption(text: "Aorta", isCorrect: false),
      const LayOutOption(text: "Superior vena cava", isCorrect: false),
      const LayOutOption(text: "Coronary artery ", isCorrect: true),
    ],
    id: 4,
    correctAnswer:
        const LayOutOption(text: "Coronary artery ", isCorrect: true),
  ),
  
];
