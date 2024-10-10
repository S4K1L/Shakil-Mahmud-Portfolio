import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Figma, Canvas'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Problem Solving'),
        KnowledgeText(knowledge: 'Robotic and IOT'),
        KnowledgeText(knowledge: 'Networking, Cyber Security'),
      ],
    );
  }

}
