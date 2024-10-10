import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shakil_app_dev_portfolio/res/constants.dart';
import 'package:shakil_app_dev_portfolio/view%20model/getx_controllers/certification_controller.dart';
import 'package:shakil_app_dev_portfolio/view%20model/responsive.dart';
import 'package:shakil_app_dev_portfolio/view/experience/components/experience_grid.dart';
import 'package:shakil_app_dev_portfolio/view/projects/components/title_text.dart';

class Achievement extends StatelessWidget {
  final controller=Get.put(ExperienceController());
  Achievement({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: '', title: 'Achievements'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ExperienceGrid(crossAxisCount: 3,ratio: 1.5,),
                  extraLargeScreen: ExperienceGrid(crossAxisCount: 4,ratio: 1.6),
                  largeMobile: ExperienceGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: ExperienceGrid(crossAxisCount: 1,ratio: 1.4),
                  tablet: ExperienceGrid(ratio: 1.7,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}