import 'package:movie_app/constants/app_constants.dart';
import 'package:phluts/phluts_core.dart';

@PhlutsScreen(screenName: 'onboarding_screen')
PhlutsWidget onboardingScreen() {
  return PhlutsScaffold(
    body: PhlutsStack(
      children: [
        PhlutsImage(
          imageType: PhlutsImageType.asset,
          src: AppAssets.onboardingImage,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: PhlutsBoxFit.cover,
        ),
        PhlutsPositioned.fill(
          child: PhlutsContainer(
            width: double.maxFinite,
            height: 500,
            decoration: PhlutsBoxDecoration(
              gradient: PhlutsGradient.linear(
                colors: ['#00050608', '#050608', '#050608'],
                begin: PhlutsAlignment.topCenter,
                end: PhlutsAlignment.bottomCenter,
                stops: [0.0, 0.8, 1.0],
              ),
            ),
            child: PhlutsPadding(
              padding: PhlutsEdgeInsets.only(
                left: 16,
                right: 16,
                top: 48,
                bottom: 48,
              ),
              child: PhlutsColumn(
                mainAxisAlignment: PhlutsMainAxisAlignment.end,
                crossAxisAlignment: PhlutsCrossAxisAlignment.start,
                children: [
                  PhlutsText(
                    data: AppStrings.onboardingTitle,
                    style: PhlutsThemeData.textTheme.displayMedium,
                    children: [
                      PhlutsTextSpan(
                        text: AppStrings.onboardingTitleAccent,
                        style: PhlutsTextStyle(color: PhlutsColors.primary),
                      ),
                    ],
                  ),
                  PhlutsSizedBox(height: 24),
                  PhlutsText(
                    data: AppStrings.onboardingDescription,
                    style: PhlutsThemeData.textTheme.bodyMedium,
                  ),
                  PhlutsSizedBox(height: 64),
                  PhlutsSizedBox(
                    height: 48,
                    width: double.maxFinite,
                    child: PhlutsFilledButton(
                      child: PhlutsText(
                        data: AppStrings.onboardingGetStartedButton,
                      ),
                      onPressed: PhlutsNavigator.pushPhluts('home_screen'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
