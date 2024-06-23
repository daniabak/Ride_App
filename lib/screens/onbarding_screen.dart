import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/screens/welcom_screen.dart';
import '../core/utils/style_maneger.dart';
import '../widgets/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget  {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> with SingleTickerProviderStateMixin
{
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  late PageController _controller;
  double _progressValue = 0.3;
  static const List<OnboardingContent> screens=[
    OnboardingContent(image:AssetsManager.atAnyTime,title: "Anywhere you are",caption: "Sell houses easily with the help of List enoryx and to make this line big \n I am writing more.",
    ),
    OnboardingContent(image:AssetsManager.atAnyWhere,title: "At anytime",caption: "Sell houses easily with the help of List enoryx and to make this line big \n I am writing more.",
    ),
    OnboardingContent(image:AssetsManager.bookYourCar,title: "Book your car",caption:  "Sell houses easily with the help of List enoryx and to make this line big \n I am writing more.",
    )
  ];
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(_animationController);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }
  void _handleNextButtonPressed() {
    if (_progressValue > 0.9) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

    } else {

      setState(() {
        _progressValue += 0.35;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, PageTransition(
              child:WelcomeScreen(),
              type:PageTransitionType.fade
              )
              );
            },
            child: Text(
              "Skip",
              style: StyleManager.smallBlackText(),
            ),
          )
        ],
      ),
      body: Column(
        children:[ Expanded(
          flex: 5,
          child: PageView.builder(
            controller: _controller,
              itemCount: screens.length,
              itemBuilder: (context,index){
            return screens[index];
          }),
        ),

          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,height: 70,
                  child: CircularProgressIndicator(
                    value: _progressValue,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(ColorManager.primaryColor),
                  ),
                ),

                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed:(){
                    _controller.nextPage(duration: Duration(microseconds: 300), curve:  Curves.ease);
                    _handleNextButtonPressed();
                  }
                  ,
                  backgroundColor: ColorManager.primaryColor,
                  child: _progressValue>0.7
                    ? Text("Go")
                   : const Icon(
                    Icons.arrow_right_alt_outlined,
                    color: ColorManager.blackColor,
                  ),
                ),

              ],
            ),
          ),
          Spacer()
        ],
      ),

    );
  }
}
