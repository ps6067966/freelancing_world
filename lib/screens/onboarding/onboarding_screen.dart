import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/cupertino.dart';

import '../home/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
      backgroundColor: CupertinoColors.white,
      onPressedOnLastPage: () => Navigator.push(context,
          CupertinoPageRoute(builder: (context) => const HomeScreen())),
      pages: [
        WhatsNewPage(
          title: Text(
            "What's New in Freelancing World",
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
          ),
          features: [
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.search_circle,
                color: CupertinoColors.systemTeal.resolveFrom(context),
              ),
              title: Text(
                'Super Easy to Find Clients and Freelancers',
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
              description: Text(
                'For clients we have made it easier to find the right freelancer and get the work done.\nFor Freelancers we have made it easier to find the great clients.',
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.money_dollar,
                color: CupertinoColors.systemTeal.resolveFrom(context),
              ),
              title: const Text('Cost Transparency'),
              description: Text(
                "Transparent Cost, Zero Hidden Charges, Zero Fees, Zero Commission and Free Forever.",
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
            ),
          ],
        ),
        const CupertinoOnboardingPage(
          title: Text('Support For Multiple Pages'),
          body: Icon(
            CupertinoIcons.square_stack_3d_down_right,
            size: 200,
          ),
        ),
        const CupertinoOnboardingPage(
          title: Text('Great Look in Light and Dark Mode'),
          body: Icon(
            CupertinoIcons.sun_max,
            size: 200,
          ),
        ),
      ],
    );
  }
}
