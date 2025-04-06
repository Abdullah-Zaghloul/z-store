import 'package:flutter/material.dart';
import 'package:z_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:z_store/utils/constants/sizes.dart';
import 'package:z_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text(
          'SKIP',
        ),
      ),
    );
  }
}
