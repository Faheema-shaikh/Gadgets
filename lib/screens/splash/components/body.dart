import 'package:flutter/material.dart';
import 'package:gadgets/components/default_button.dart';
import 'package:gadgets/constants.dart';
import 'package:gadgets/screens/sign_in/signinscreen.dart';
import 'package:gadgets/screens/splash/components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentpage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to PS Collection. Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help the people connect with store !",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us!",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentpage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index: index)),
                  ),
                  Spacer(),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentpage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}