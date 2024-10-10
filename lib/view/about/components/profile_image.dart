import 'package:flutter/material.dart';
import '../../../res/constants.dart';


class ProfileImageContainer extends StatefulWidget {
  const ProfileImageContainer({super.key, this.height = 250, this.width = 200});
  final double? width;
  final double? height;

  @override
  ProfileImageContainerState createState() => ProfileImageContainerState();
}

class ProfileImageContainerState extends State<ProfileImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
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
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Ensure the image is clipped within the container
              child: Container(
                alignment: Alignment.center,
                color: Colors.black,
                child: Image.asset(
                  'assets/images/image.png',
                  height: widget.height, // Constrain the image height to the container height
                  width: widget.width,  // Constrain the image width to the container width
                  fit: BoxFit.contain, // Ensures the image fits within the container
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
