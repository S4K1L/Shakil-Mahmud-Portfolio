import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shakil_app_dev_portfolio/res/constants.dart';
import 'package:shakil_app_dev_portfolio/view%20model/responsive.dart';
import 'package:shakil_app_dev_portfolio/view/about/components/cv_download_button.dart';
import 'package:shakil_app_dev_portfolio/view/about/components/position.dart';
import 'package:shakil_app_dev_portfolio/view/about/components/profile_image.dart';
import 'package:shakil_app_dev_portfolio/view/about/components/user_data.dart';
import 'package:shakil_app_dev_portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:shakil_app_dev_portfolio/view/intro/components/description_text.dart';
import 'package:shakil_app_dev_portfolio/view/intro/components/headline_text.dart';
import 'package:shakil_app_dev_portfolio/view/projects/components/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: defaultPadding*4,top: defaultPadding*6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!Responsive.isDesktop(context))
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                  if (!Responsive.isDesktop(context))
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.23,
                        ),
                        const AnimatedImageContainer(
                          width: 150,
                          height: 220,
                        ),
                      ],
                    ),
                  if (!Responsive.isDesktop(context))
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  if (Responsive.isDesktop(context)) const ProfileImageContainer(),
                  const Responsive(
                      desktop: MyPortfolioText(start: 40, end: 50),
                      largeMobile: MyPortfolioText(start: 40, end: 35),
                      mobile: MyPortfolioText(start: 35, end: 30),
                      tablet: MyPortfolioText(start: 50, end: 40)),
                  if (kIsWeb && Responsive.isLargeMobile(context))
                    Container(
                      height: defaultPadding,
                      color: Colors.transparent,
                    ),
                  const PositionText(),
                  const SizedBox(height: defaultPadding / 2),
                  const Responsive(
                    desktop: AnimatedDescriptionText(start: 14, end: 15),
                    largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                    mobile: AnimatedDescriptionText(start: 14, end: 12),
                    tablet: AnimatedDescriptionText(start: 17, end: 14),
                  ),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  const CvDownloadButton(),

                ],
              ),
            ),
          ),
          const Spacer(),
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'About', title: 'Me'),
          const Spacer(),
          UserData(),
        ],
      ),
    );
  }
}
