// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

/* -------------------------MaterialStateProperties--------------------------- */

extension MaterialStateSet on Set<MaterialState> {
  bool get isHovered => contains(MaterialState.hovered);
  bool get isFocused => contains(MaterialState.focused);
  bool get isError => contains(MaterialState.error);
  bool get isPressed => contains(MaterialState.pressed);
  bool get isDisabled => contains(MaterialState.disabled);
}

/* ---------------------------------Functions----------------------------------- */

/* -------------------------------Primary-Button-------------------------------- */

Color? getPrimaryButtonBackgroundColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledPrimaryButtonBackgroundColor;
  } else if (states.isHovered) {
    return AppTheme._hoverPrimaryButtonBackgroundColor;
  } else {
    return AppTheme._defaultPrimaryButtonBackgroundColor;
  }
}

Color? getPrimaryButtonTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledPrimaryButtonTextColor;
  } else if (states.isHovered) {
    return AppTheme._hoverPrimaryButtonTextColor;
  } else {
    return AppTheme._defaultPrimaryButtonTextColor;
  }
}
/* ------------------------------Outlined-Button-------------------------------- */

Color? getOutlinedButtonBackgroundColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedButtonBackgroundColor;
  } else if (states.isHovered) {
    return AppTheme._hoverOutlinedButtonBackgroundColor;
  } else {
    return AppTheme._defaultOutlinedButtonBackgroundColor;
  }
}

Color? getOutlinedButtonTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedButtonTextColor;
  } else if (states.isHovered) {
    return AppTheme._hoverOutlinedButtonTextColor;
  } else {
    return AppTheme._defaultOutlinedButtonTextColor;
  }
}

Color? getOutlinedButtonBorderColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedButtonBorderColor;
  } else if (states.isHovered) {
    return AppTheme._hoverOutlinedButtonBorderColor;
  } else {
    return AppTheme._defaultOutlinedButtonBorderColor;
  }
}

/* -------------------------------Text-Button-------------------------------- */

Color? getTextButtonBackgroundColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledTextButtonBackgroundColor;
  } else if (states.isHovered) {
    return AppTheme._hoverTextButtonBackgroundColor;
  } else {
    return AppTheme._defaultTextButtonBackgroundColor;
  }
}

Color? getTextButtonTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledTextButtonTextColor;
  } else if (states.isHovered) {
    return AppTheme._hoverTextButtonTextColor;
  } else {
    return AppTheme._defaultTextButtonTextColor;
  }
}

/* --------------------------Outlined-Input-Decoration-------------------------- */

Color? getOutlineInputBackgroundColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedInputBackgroundColor;
  } else if (states.isFocused) {
    return AppTheme._focusedOutlinedInputBackgroundColor;
  } else if (states.isError) {
    return AppTheme._errorOutlinedInputBackgroundColor;
  } else {
    return AppTheme._defaultOutlinedInputBackgroundColor;
  }
}

Color? getOutlineInputTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedInputTextColor;
  } else if (states.isFocused) {
    return AppTheme._focusedOutlinedInputTextColor;
  } else if (states.isError) {
    return AppTheme._errorOutlinedInputTextColor;
  } else {
    return AppTheme._defaultOutlinedInputTextColor;
  }
}

Color? getOutlineInputBorderColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedInputBorderColor;
  } else if (states.isFocused) {
    return AppTheme._focusedOutlinedInputBorderColor;
  } else if (states.isError) {
    return AppTheme._errorOutlinedInputBorderColor;
  } else {
    return AppTheme._defaultOutlinedInputBorderColor;
  }
}

Color? getOutlineInputHelperTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledOutlinedInputHelperTextColor;
  } else if (states.isFocused) {
    return AppTheme._focusedOutlinedInputHelperTextColor;
  } else if (states.isError) {
    return AppTheme._errorOutlinedInputHelperTextColor;
  } else {
    return AppTheme._defaultOutlinedInputHelperTextColor;
  }
}

/* ---------------------------Line-Input-Decoration----------------------------- */

Color? getLineInputBackgroundColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledLineInputBackgroundColor;
  } else if (states.isFocused) {
    return AppTheme._focusedLineInputBackgroundColor;
  } else if (states.isError) {
    return AppTheme._errorLineInputBackgroundColor;
  } else {
    return AppTheme._defaultLineInputBackgroundColor;
  }
}

Color? getLineInputTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledLineInputTextColor;
  } else if (states.isFocused) {
    return AppTheme._focusedLineInputTextColor;
  } else if (states.isError) {
    return AppTheme._errorLineInputTextColor;
  } else {
    return AppTheme._defaultLineInputTextColor;
  }
}

Color? getLineInputBorderColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledLineInputBorderColor;
  } else if (states.isFocused) {
    return AppTheme._focusedLineInputBorderColor;
  } else if (states.isError) {
    return AppTheme._errorLineInputBorderColor;
  } else {
    return AppTheme._defaultLineInputBorderColor;
  }
}

Color? getLineInputHelperTextColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._disabledLineInputHelperTextColor;
  } else if (states.isFocused) {
    return AppTheme._focusedLineInputHelperTextColor;
  } else if (states.isError) {
    return AppTheme._errorLineInputHelperTextColor;
  } else {
    return AppTheme._defaultLineInputHelperTextColor;
  }
}

Color? getSwitchTileTrackColor(Set<MaterialState> states) {
  if (states.isDisabled) {
    return AppTheme._gray04;
  } else {
    return AppTheme._gray05;
  }
}

Color? getSwitchTileThumbColor(Set<MaterialState> states) {
  return AppTheme._primary05;
}

/* ----------------------------------AppTheme----------------------------------- */

class AppTheme {
  AppTheme._();

/* -----------------------------------Colors------------------------------------ */

  //BackgroundColor
  static const Color _scaffoldDarkBackgroundColor = Color(0xFF14191F);
  static const Color _scaffoldLightBackgroundColor = Color(0xFFededed);

  //BottomNavBar BackgroundColor
  static const Color _bottomNavBarBackground = Color(0xFF0C141E);

  //Ticket Container Background Color
  static const Color _ticketBackground = Color(0xFF2D2D2D);

  //Basic Colors
  static const Color _coreWhite = Color(0xffffffff);
  static const Color _coreBlack = Color(0xff000000);

  //ErrorColor
  static const Color _red05 = Color(0xffff0000); //ErrorColor

  //SuccessColor
  //static const Color _green07 = Color(0xff009F13);

  static const Color _primary01 = Color(0xfff0f6ff);
  static const Color _primary05 = Color(0xffFF6600);
  static const Color _primary06 = Color(0xffFF6600);
  static const Color _primary08 = Color(0xffFF6600);

  static const Color _gray01 = Color(0xfff9f9fa);
  static const Color _gray02 = Color(0xffebeeef);
  static const Color _gray04 = Color(0xffcdd4d8);
  static const Color _gray05 = Color(0xffbcc5cb);
  static const Color _gray06 = Color(0xffa9b5bc);

  //Primary Button Colors
  static const Color _defaultPrimaryButtonBackgroundColor = _primary05;
  static const Color _defaultPrimaryButtonTextColor = _coreBlack;
  static const Color _hoverPrimaryButtonBackgroundColor = _primary08;
  static const Color _hoverPrimaryButtonTextColor = _coreWhite;
  static const Color _disabledPrimaryButtonBackgroundColor = _gray01;
  static const Color _disabledPrimaryButtonTextColor = _gray06;

  //Outlined Button Colors
  static const Color _defaultOutlinedButtonBackgroundColor =
      _scaffoldLightBackgroundColor;
  static const Color _defaultOutlinedButtonTextColor = _primary05;
  static const Color _defaultOutlinedButtonBorderColor = _primary05;
  static const Color _hoverOutlinedButtonBackgroundColor =
      _scaffoldLightBackgroundColor;
  static const Color _hoverOutlinedButtonTextColor = _primary06;
  static const Color _hoverOutlinedButtonBorderColor = _primary06;
  static const Color _disabledOutlinedButtonBackgroundColor = _gray02;
  static const Color _disabledOutlinedButtonTextColor = _gray02;
  static const Color _disabledOutlinedButtonBorderColor = _gray06;

  //Text Button Colors
  static const Color _defaultTextButtonBackgroundColor = Colors.transparent;
  static const Color _defaultTextButtonTextColor = _primary05;
  static const Color _hoverTextButtonBackgroundColor = Colors.transparent;
  static const Color _hoverTextButtonTextColor = _primary06;
  static const Color _disabledTextButtonBackgroundColor = Colors.transparent;
  static const Color _disabledTextButtonTextColor = _gray06;

  //Outlined Input Colors
  static const Color _defaultOutlinedInputBackgroundColor = _coreWhite;
  static const Color _defaultOutlinedInputTextColor = _gray05;
  static const Color _defaultOutlinedInputBorderColor = _gray05;
  static const Color _defaultOutlinedInputHelperTextColor = _gray05;
  static const Color _focusedOutlinedInputBackgroundColor = _coreWhite;
  static const Color _focusedOutlinedInputTextColor = _primary05;
  static const Color _focusedOutlinedInputBorderColor = _primary05;
  static const Color _focusedOutlinedInputHelperTextColor = _primary05;
  static const Color _errorOutlinedInputBackgroundColor = _coreWhite;
  static const Color _errorOutlinedInputTextColor = _red05;
  static const Color _errorOutlinedInputBorderColor = _red05;
  static const Color _errorOutlinedInputHelperTextColor = _red05;
  static const Color _disabledOutlinedInputBackgroundColor = _coreWhite;
  static const Color _disabledOutlinedInputTextColor = _gray04;
  static const Color _disabledOutlinedInputBorderColor = _gray04;
  static const Color _disabledOutlinedInputHelperTextColor = _gray04;

  //Line Input Colors
  static const Color _defaultLineInputBackgroundColor = _coreWhite;
  static const Color _defaultLineInputTextColor = _coreBlack;
  static const Color _defaultLineInputBorderColor = _gray05;
  static const Color _defaultLineInputHelperTextColor = _gray05;
  static const Color _focusedLineInputBackgroundColor = _coreWhite;
  static const Color _focusedLineInputTextColor = _primary05;
  static const Color _focusedLineInputBorderColor = _primary05;
  static const Color _focusedLineInputHelperTextColor = _primary05;
  static const Color _errorLineInputBackgroundColor = _coreWhite;
  static const Color _errorLineInputTextColor = _red05;
  static const Color _errorLineInputBorderColor = _red05;
  static const Color _errorLineInputHelperTextColor = _red05;
  static const Color _disabledLineInputBackgroundColor = _coreWhite;
  static const Color _disabledLineInputTextColor = _gray04;
  static const Color _disabledLineInputBorderColor = _gray04;
  static const Color _disabledLineInputHelperTextColor = _gray04;

/* --------------------------------Button-Themes-------------------------------- */

  //Primary Button Theme Data
  static final ElevatedButtonThemeData _customPrimaryButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => getPrimaryButtonBackgroundColor(states)),
        foregroundColor: MaterialStateProperty.resolveWith(
            (states) => getPrimaryButtonTextColor(states)),
        shape: MaterialStateProperty.resolveWith(
            (states) => getPrimaryButtonBorderRadius(states))),
  );

  //Outlined Button Theme Data
  static final OutlinedButtonThemeData _customOutlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
          (states) => getOutlinedButtonBackgroundColor(states)),
      foregroundColor: MaterialStateProperty.resolveWith(
          (states) => getOutlinedButtonTextColor(states)),
    ),
  );

  //Text Button Theme Data
  static final TextButtonThemeData _customTextButtonThemeData =
      TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
          (states) => getTextButtonBackgroundColor(states)),
      foregroundColor: MaterialStateProperty.resolveWith(
          (states) => getTextButtonTextColor(states)),
    ),
  );

  //Icon Button Theme Data
  static final IconButtonThemeData _customIconButtonThemeData =
      IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(
          (states) => getPrimaryButtonBackgroundColor(states)),
      foregroundColor: MaterialStateProperty.resolveWith(
          (states) => getPrimaryButtonTextColor(states)),
    ),
  );

/* ----------------------------InputDecorationThemes---------------------------- */

  //Input Outlined Decoration Theme
  static final InputDecorationTheme inputOutlinedDecorationTheme =
      InputDecorationTheme(
    labelStyle: CustomMaterialStateOutlinedTextStyle(),
    helperStyle: CustomMaterialStateOutlinedTextStyle(),
    border: CustomMaterialStateOutlinedInputBorder(),
    fillColor: _coreWhite,
    floatingLabelAlignment: FloatingLabelAlignment.start,
  );

  //Input Line Decoration Theme
  static final InputDecorationTheme inputLineDecorationTheme =
      InputDecorationTheme(
    labelStyle: CustomMaterialStateLineTextStyle(),
    helperStyle: CustomMaterialStateLineTextStyle(),
    border: CustomMaterialStateLineInputBorder(),
    fillColor: _coreWhite,
    floatingLabelAlignment: FloatingLabelAlignment.start,
  );

/* --------------------------------SliderThemes-------------------------------- */

  //Slider Theme
  static const SliderThemeData sliderTheme = SliderThemeData(
    activeTrackColor: _primary05,
    inactiveTrackColor: _gray04,
    thumbColor: _primary05,
    valueIndicatorColor: _primary05,
    valueIndicatorTextStyle: TextStyle(
      color: _coreWhite,
    ),
  );

/* --------------------------------SwitchThemes-------------------------------- */

  //SwitchTile Theme
  static final SwitchThemeData _customSwitchThemeData = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(
        (states) => getSwitchTileThumbColor(states)),
    trackColor: MaterialStateProperty.resolveWith(
        (states) => getSwitchTileTrackColor(states)),
  );

/* ---------------------------------TextThemes---------------------------------- */

  static const TextTheme defaultLightTextTheme = TextTheme(
    labelSmall: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // overline
    bodySmall: TextStyle(
        color: Colors.black87, decoration: TextDecoration.none), // caption
    labelLarge: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // button
    bodyLarge: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // bodyText1
    bodyMedium: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // bodyText2
    displayLarge: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline1
    displayMedium: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline2
    displaySmall: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline3
    headlineMedium: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline4
    headlineSmall: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline5
    titleLarge: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // headline6
    titleMedium: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // subtitle1
    titleSmall: TextStyle(
        color: Colors.black, decoration: TextDecoration.none), // subtitle2
  );

  static const TextTheme defaultDarkTextTheme = TextTheme(
    labelSmall: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // overline
    bodySmall: TextStyle(
        color: Colors.white70, decoration: TextDecoration.none), // caption
    labelLarge: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // button
    bodyLarge: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // bodyText1
    bodyMedium: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // bodyText2
    displayLarge: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline1
    displayMedium: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline2
    displaySmall: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline3
    headlineMedium: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline4
    headlineSmall: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline5
    titleLarge: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // headline6
    titleMedium: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // subtitle1
    titleSmall: TextStyle(
        color: Colors.white, decoration: TextDecoration.none), // subtitle2
  );

  /* ---------------------------------SettingsThemes---------------------------------- */
  static const SettingsThemeData settingsLightTheme = SettingsThemeData(
    settingsSectionBackground: Colors.white,
    settingsListBackground: Colors.transparent,
    settingsTileTextColor: Colors.black,
    tileDescriptionTextColor: Colors.black,
    dividerColor: Color(0xFF0C141E),
  );

  static const SettingsThemeData settingsDarkTheme = SettingsThemeData(
    settingsSectionBackground: _scaffoldDarkBackgroundColor,
    settingsListBackground: Colors.transparent,
    settingsTileTextColor: Colors.white,
    tileDescriptionTextColor: Colors.white,
    dividerColor: Color(0xFF0C141E),
  );

  /* ---------------------------BottomNavBarTextStyle--------------------------- */

  static const TextStyle bottomNavBarTextStyle = TextStyle(
    color: _primary05,
  );

  static const TextStyle bottomNavBarUnselectedTextStyle = TextStyle(
    color: _gray04,
  );

  /* -------------------------BottomNavBarIconThemeData------------------------- */

  static const IconThemeData bottomNavBarIconThemeData = IconThemeData(
    color: _primary05,
  );

/* ------------------------------BottomNavBarTheme------------------------------ */

  static BottomNavigationBarThemeData bottomNavigationBarLightThemeData =
      const BottomNavigationBarThemeData(
    backgroundColor: _bottomNavBarBackground,
    selectedIconTheme: bottomNavBarIconThemeData,
    selectedItemColor: _primary05,
    selectedLabelStyle: bottomNavBarTextStyle,
    unselectedLabelStyle: bottomNavBarUnselectedTextStyle,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

  static BottomNavigationBarThemeData bottomNavigationBarDarkThemeData =
      const BottomNavigationBarThemeData(
    backgroundColor: _bottomNavBarBackground,
    selectedIconTheme: bottomNavBarIconThemeData,
    selectedItemColor: _primary05,
    selectedLabelStyle: bottomNavBarTextStyle,
    unselectedLabelStyle: bottomNavBarUnselectedTextStyle,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

/* -----------------------------------Themes------------------------------------ */

  static final ThemeData lightTheme = ThemeData(
    outlinedButtonTheme: _customOutlinedButtonThemeData,
    elevatedButtonTheme: _customPrimaryButtonThemeData,
    textButtonTheme: _customTextButtonThemeData,
    inputDecorationTheme: inputOutlinedDecorationTheme,
    scaffoldBackgroundColor: _scaffoldLightBackgroundColor,
    bottomNavigationBarTheme: bottomNavigationBarLightThemeData,
    primaryColor: _primary05,
    textTheme: defaultLightTextTheme,
    sliderTheme: sliderTheme,
    switchTheme: _customSwitchThemeData,
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    outlinedButtonTheme: _customOutlinedButtonThemeData,
    elevatedButtonTheme: _customPrimaryButtonThemeData,
    textButtonTheme: _customTextButtonThemeData,
    iconButtonTheme: _customIconButtonThemeData,
    inputDecorationTheme: inputOutlinedDecorationTheme,
    scaffoldBackgroundColor: _scaffoldDarkBackgroundColor,
    bottomNavigationBarTheme: bottomNavigationBarDarkThemeData,
    primaryColor: _primary05,
    textTheme: defaultDarkTextTheme,
    sliderTheme: sliderTheme,
    switchTheme: _customSwitchThemeData,
    useMaterial3: true,
  );
}

/* ------------------------Custom-Input-Border-Classes-------------------------- */

//Custom Material State Outlined Input Border
class CustomMaterialStateOutlinedInputBorder extends OutlineInputBorder
    implements MaterialStateOutlineInputBorder {
  @override
  InputBorder resolve(Set<MaterialState> states) {
    if (states.isDisabled) {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._disabledOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else if (states.isError) {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._errorOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else if (states.isFocused) {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._focusedOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._defaultOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    }
  }
}

//Custom Material State Line Input Border
class CustomMaterialStateLineInputBorder extends UnderlineInputBorder
    implements MaterialStateUnderlineInputBorder {
  @override
  UnderlineInputBorder resolve(Set<MaterialState> states) {
    if (states.isDisabled) {
      return UnderlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._disabledOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else if (states.isError) {
      return UnderlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._errorOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else if (states.isFocused) {
      return UnderlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._focusedOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    } else {
      return UnderlineInputBorder(
        borderSide: const BorderSide(
          color: AppTheme._defaultOutlinedInputBorderColor,
        ),
        borderRadius: BorderRadius.circular(8),
      );
    }
  }
}

/* ------------------------Custom-TextStyle-Classes-------------------------- */

//Custom Material State Outlined Input TextStyle
class CustomMaterialStateOutlinedTextStyle extends TextStyle
    implements MaterialStateTextStyle {
  @override
  TextStyle resolve(Set<MaterialState> states) {
    if (states.isDisabled) {
      return TextStyle(color: getOutlineInputTextColor(states));
    } else if (states.isError) {
      return TextStyle(color: getOutlineInputTextColor(states));
    } else if (states.isFocused) {
      return TextStyle(color: getOutlineInputTextColor(states));
    } else {
      return TextStyle(color: getOutlineInputTextColor(states));
    }
  }
}

//Custom Material State Line Input TextStyle
class CustomMaterialStateLineTextStyle extends TextStyle
    implements MaterialStateTextStyle {
  @override
  TextStyle resolve(Set<MaterialState> states) {
    if (states.isDisabled) {
      return TextStyle(color: getLineInputTextColor(states));
    } else if (states.isError) {
      return TextStyle(color: getLineInputTextColor(states));
    } else if (states.isFocused) {
      return TextStyle(color: getLineInputTextColor(states));
    } else {
      return TextStyle(color: getLineInputTextColor(states));
    }
  }
}

/* -------------------Custom-RoundedRectangleBorder-Classes--------------------- */

RoundedRectangleBorder? getPrimaryButtonBorderRadius(
    Set<MaterialState> states) {
  if (states.isDisabled) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    );
  } else if (states.isHovered) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    );
  } else {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    );
  }
}
