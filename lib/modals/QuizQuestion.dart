 class QuizQuestion{
  final String text;
  final List<String> answers;
   const QuizQuestion(this.text, this.answers);

   List<String> getshuffled(){
     final shuffledList=List.of(answers);
     shuffledList.shuffle();
     return shuffledList;
   }

 }