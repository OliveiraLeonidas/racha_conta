import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(tBorderRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(tBorderRadius),
      ),
    ),
  );
}
