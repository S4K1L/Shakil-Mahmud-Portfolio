import 'package:flutter/material.dart';
import 'package:shakil_app_dev_portfolio/view/about/about.dart';
import 'package:shakil_app_dev_portfolio/view/experience/experience.dart';
import 'package:shakil_app_dev_portfolio/view/intro/introduction.dart';
import 'package:shakil_app_dev_portfolio/view/main/main_view.dart';
import 'package:shakil_app_dev_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      Experience(),
      ProjectsView(),
      const AboutPage(),
    ]);
  }
}
