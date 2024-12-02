class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String avenirAr = 'Avenir Arabic';
  static const String robotoEn = 'Roboto';
  static String getLocalizationFontFamily() {
    const currentLanuage = 'ar';
    if (currentLanuage == 'ar') {
      return avenirAr;
    } else {
      return robotoEn;
    }
  }
}
