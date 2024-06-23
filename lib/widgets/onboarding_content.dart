import 'package:flutter/cupertino.dart';
import '../core/utils/style_maneger.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.image, required this.title, required this.caption});
  final String image;
  final String title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Spacer(),
    Image.asset(image),
    Spacer(
    flex: 1,
    ),
    Text(
      title,
    style: StyleManager.boldTextStyle(),
    ),
    Center(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Text(
    caption,
    style: StyleManager.onboardingText(),
      maxLines: 4,
      textAlign: TextAlign.center,
    ),
    ),
    ),
    Spacer(
    flex: 2,
    ),
    ]
    );
  }
}
