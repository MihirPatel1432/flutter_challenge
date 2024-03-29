import 'dart:ui';

enum FontFamilyType { opensans }

enum FontWeightType { light, regular, medium, semiBold, bold, heavy}

class FontType {
  static getFontFamilyType(FontFamilyType? fontFamilyType) {
    switch (fontFamilyType) {
      case FontFamilyType.opensans:
        return 'OpenSans';
      case null:
        return '';
    }
  }

  static getFontWeightType(FontWeightType? fontWeightType) {
    switch (fontWeightType) {
      case FontWeightType.light:
        return FontWeight.w300;
      case FontWeightType.regular:
        return FontWeight.w400;
      case FontWeightType.medium:
        return FontWeight.w500;
      case FontWeightType.semiBold:
        return FontWeight.w600;
      case FontWeightType.bold:
        return FontWeight.w700;
      case null:
        return FontWeightType.regular;
      case FontWeightType.heavy:
        return FontWeight.w900;
    }
  }
}
