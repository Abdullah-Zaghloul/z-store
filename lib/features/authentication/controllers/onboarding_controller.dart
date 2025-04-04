import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance =>
      Get.find(); // explain in the bottom

  /// Variables

  final pageController = PageController();
// Rx is used to create observable variables in GetX, 
//which allows for reactive programming. When the value of an Rx variable changes,
// any widgets that depend on it will automatically rebuild.
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page.

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page

  void nextPage() {
    if (currentPageIndex.value == 2) {
// Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}

// explain line 8
/*
This line of Dart code defines a static getter named instance in the OnboardingController class. It leverages the GetX package to retrieve an existing instance of OnboardingController from the dependency injection container. Here's a detailed explanation:

Breakdown of the Code
static: The static keyword makes this getter a class-level member, meaning it can be accessed directly through the class name (e.g., OnboardingController.instance) without needing to create an instance of the class. This is useful for providing a globally accessible entry point to the controller.

OnboardingController get instance: This defines a getter named instance that returns an object of type OnboardingController. A getter in Dart is a special method that allows you to retrieve a value as if it were a property.

=> Get.find(): The Get.find() method is part of the GetX package. It retrieves an instance of the specified type (OnboardingController in this case) from the GetX dependency injection container. This assumes that an instance of OnboardingController has already been registered (e.g., using Get.put()).

Purpose
The purpose of this static getter is to provide a convenient and centralized way to access the OnboardingController instance from anywhere in the app. Instead of calling Get.find<OnboardingController>() repeatedly, you can simply use OnboardingController.instance.

Key Benefits
Simplified Access: This approach reduces boilerplate code by providing a shorthand for retrieving the controller instance.
Global Availability: Since the getter is static, it can be accessed globally without requiring an instance of the class.
Encapsulation: It encapsulates the dependency retrieval logic, making the code cleaner and easier to maintain.
Example Usage
Suppose you want to call a method or access a property of the OnboardingController. Instead of writing:


*/
