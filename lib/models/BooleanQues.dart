class BoolQuestion {
  final int id, answer;
  final String question;
  final List<String> options;

  BoolQuestion({this.id, this.question, this.answer, this.options});
}

const List sample_data1 = [
  {
    "id": 1,
    "question": "Digital camera is input device used to take photographs.",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "FAX stands for First Away Xerox.",
    "options": ['True', 'False'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Freeware is software that is available for use at no monetary cost.",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "The hexadecimal number system contains digits from 1 - 15.",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Octal number system contains digits from 0 - 7.",
    "options": ['True', 'False'],
    "answer_index": 1,
  },
];
