import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/app_texts.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController()); // explain in the bottom
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

// explain line 17
/*
Workspace: This line of Dart code is using the **GetX** package, a popular state management and dependency injection library for Flutter. Here's a breakdown of what it does:

1. **`final controller`**: This declares a final variable named `controller`. In Dart, a `final` variable can only be assigned once, meaning its reference cannot be changed after initialization. However, the object it points to can still be mutable.

2. **`Get.put()`**: This is a method provided by the GetX package for dependency injection. It registers an instance of the specified class (`OnboardingController` in this case) into the GetX dependency management system. Once registered, this instance can be accessed from anywhere in the app using GetX's dependency retrieval methods.

3. **`OnboardingController()`**: This is the constructor of the `OnboardingController` class. The `Get.put()` method creates an instance of this class and stores it in GetX's dependency injection container.

### Purpose
The purpose of this line is to instantiate the `OnboardingController` and make it available for use throughout the app. By using `Get.put()`, you ensure that the same instance of `OnboardingController` is reused wherever it is needed, promoting efficient resource management and avoiding redundant object creation.

### Key Benefits
- **Centralized Dependency Management**: You don't need to manually pass the `OnboardingController` instance to widgets or classes that need it. GetX handles this for you.
- **Singleton Behavior**: By default, `Get.put()` creates a singleton instance, meaning the same instance is shared across the app unless explicitly configured otherwise.
- **Ease of Use**: This approach simplifies dependency injection compared to other methods like `Provider` or manually managing instances.

### Example Usage
After this line, you can access the `OnboardingController` instance anywhere in your app using `Get.find<OnboardingController>()`. For example:

```dart
final onboardingController = Get.find<OnboardingController>();
```

This makes it easy to manage and interact with the controller's state or methods without needing to pass it explicitly through widget trees.*/