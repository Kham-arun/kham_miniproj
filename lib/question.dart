class Quiz {
  String? question;
  String? choice1;
  String? choice2;
  String? choice3;
  String? choice4;
  int? answer;

  Quiz({String? q, String? c1, String? c2, String? c3, String? c4, int? a}) {
    question = q;
    choice1 = c1;
    choice2 = c2;
    choice3 = c3;
    choice4 = c4;
    answer = a;
  }
}
