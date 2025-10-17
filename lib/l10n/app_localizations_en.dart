// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'La Bonne Sante';

  @override
  String get specialOffersTitle => 'Special Offers';

  @override
  String get specialOffersSubtitle => 'Don’t miss out on our exclusive deals.';

  @override
  String get viewAll => 'View All';

  @override
  String get trendingNowTitle => 'Trending Now';

  @override
  String get trendingNowSubtitle =>
      'Discover what\'s new and elevate your style.';

  @override
  String get badgeDiscount25 => '25% Off';

  @override
  String get badgeNew => 'New';

  @override
  String get carouselCtaShopNow => 'Shop Now';

  @override
  String get pdpShopNowPayLater => 'Shop Now, Pay Later';

  @override
  String get pdpAddToCart => 'ADD TO CART';

  @override
  String get pdpDescription => 'Description';

  @override
  String get pdpSizeAndFit => 'Size & Fit';

  @override
  String get pdpSizeAndFitDetails => 'Oversized fit\nMidi length';

  @override
  String get pdpMaterialsAndCare => 'Materials & Care';

  @override
  String get pdpMaterialsAndCareDetails => '100% Cotton';

  @override
  String get retry => 'Retry';

  @override
  String get categoriesTitle => 'Categories';

  @override
  String get bannersErrorMessage => 'We couldn\'t load banners.';

  @override
  String get categoriesErrorMessage => 'We couldn\'t load categories.';

  @override
  String get productsErrorMessage => 'We couldn\'t load products.';
}
