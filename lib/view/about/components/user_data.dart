import 'package:flutter/material.dart';
import 'package:shakil_app_dev_portfolio/res/constants.dart';
import 'package:shakil_app_dev_portfolio/view%20model/responsive.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width/3,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(colors: [
              Colors.pinkAccent,
              Colors.blue,
            ]),
            boxShadow: const [
              BoxShadow(
                color: Colors.pink,
                offset: Offset(-2, 0),
              ),
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2, 0),
              ),
            ]),
        child: InkWell(
          onHover: (value) {},
          onTap: () {},
          borderRadius: BorderRadius.circular(30),
          child: AnimatedContainer(
            padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                top: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: bgColor),
            duration: const Duration(milliseconds: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About Me',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Responsive.isMobile(context)
                    ? const SizedBox(
                        height: defaultPadding / 2,
                      )
                    : const SizedBox(
                        height: defaultPadding*3,
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'EDUCATION',
                      style: const TextStyle(color: Colors.white, height: 1.5,fontSize: 18,fontWeight: FontWeight.w900),
                      maxLines: size.width > 700 && size.width < 750
                          ? 3
                          : size.width < 470
                          ? 2
                          : size.width > 600 && size.width < 700
                          ? 6
                          : size.width > 900 && size.width < 1060
                          ? 6
                          : 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding/1.5),
                      child: Column(
                        children: [
                          Text(
                            'Bachelor in Computer Science and Engineering',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'SHANTO MARIAM UNIVERSITY OF CREATIVE TECHNOLOGY',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '2022 - 2026 (Expected)',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding*3),
                    Text(
                      'LANGUAGE',
                      style: const TextStyle(color: Colors.white, height: 1.5,fontSize: 18,fontWeight: FontWeight.w900),
                      maxLines: size.width > 700 && size.width < 750
                          ? 3
                          : size.width < 470
                              ? 2
                              : size.width > 600 && size.width < 700
                                  ? 6
                                  : size.width > 900 && size.width < 1060
                                      ? 6
                                      : 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding/1.5),
                      child: Column(
                        children: [
                          Text(
                            'Bengali - Native',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'English - Intermediate',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Hindi - Spoken',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding*3),
                    Text(
                      'INTEREST',
                      style: const TextStyle(color: Colors.white, height: 1.5,fontSize: 18,fontWeight: FontWeight.w900),
                      maxLines: size.width > 700 && size.width < 750
                          ? 3
                          : size.width < 470
                              ? 2
                              : size.width > 600 && size.width < 700
                                  ? 6
                                  : size.width > 900 && size.width < 1060
                                      ? 6
                                      : 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding/1.5),
                      child: Column(
                        children: [
                          Text(
                            'Problem Solving with C, C++',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Gaming',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Traveling',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding*3),
                    Text(
                      'INFORMATION',
                      style: const TextStyle(color: Colors.white, height: 1.5,fontSize: 18,fontWeight: FontWeight.w900),
                      maxLines: size.width > 700 && size.width < 750
                          ? 3
                          : size.width < 470
                              ? 2
                              : size.width > 600 && size.width < 700
                                  ? 6
                                  : size.width > 900 && size.width < 1060
                                      ? 6
                                      : 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding/1.5),
                      child: Column(
                        children: [
                          Text(
                            '+8801941271076',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '69shakilmahmud@gmail.com',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Uttara Sector#10, Road#22, Dhaka 1230.',
                            style: const TextStyle(color: Colors.grey, height: 1.5),
                            maxLines: size.width > 700 && size.width < 750
                                ? 3
                                : size.width < 470
                                ? 2
                                : size.width > 600 && size.width < 700
                                ? 6
                                : size.width > 900 && size.width < 1060
                                ? 6
                                : 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                const Spacer(),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
