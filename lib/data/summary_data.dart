import 'package:flutter/material.dart';
class SummaryData extends StatelessWidget {
  const SummaryData({required this.summarydata,super.key});
final List<Map<String,Object>> summarydata;
  @override
  Widget build(BuildContext context) {
    return Column(children:
         summarydata.map((data){
         return Row(
             children: [
             Text(((data['question_number'] as int) + 1).toString()),
           ],
         );}
         ).toList(),

    );
  }
}
