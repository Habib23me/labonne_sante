import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'La Bonne Sante'**
  String get appTitle;

  /// No description provided for @specialOffersTitle.
  ///
  /// In en, this message translates to:
  /// **'Special Offers'**
  String get specialOffersTitle;

  /// No description provided for @specialOffersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Don’t miss out on our exclusive deals.'**
  String get specialOffersSubtitle;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @trendingNowTitle.
  ///
  /// In en, this message translates to:
  /// **'Trending Now'**
  String get trendingNowTitle;

  /// No description provided for @trendingNowSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover what\'s new and elevate your style.'**
  String get trendingNowSubtitle;

  /// No description provided for @badgeDiscount25.
  ///
  /// In en, this message translates to:
  /// **'25% Off'**
  String get badgeDiscount25;

  /// No description provided for @badgeNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get badgeNew;

  /// No description provided for @carouselCtaShopNow.
  ///
  /// In en, this message translates to:
  /// **'Shop Now'**
  String get carouselCtaShopNow;

  /// No description provided for @pdpShopNowPayLater.
  ///
  /// In en, this message translates to:
  /// **'Shop Now, Pay Later'**
  String get pdpShopNowPayLater;

  /// No description provided for @pdpAddToCart.
  ///
  /// In en, this message translates to:
  /// **'ADD TO CART'**
  String get pdpAddToCart;

  /// No description provided for @pdpDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get pdpDescription;

  /// No description provided for @pdpSizeAndFit.
  ///
  /// In en, this message translates to:
  /// **'Size & Fit'**
  String get pdpSizeAndFit;

  /// No description provided for @pdpSizeAndFitDetails.
  ///
  /// In en, this message translates to:
  /// **'Oversized fit\nMidi length'**
  String get pdpSizeAndFitDetails;

  /// No description provided for @pdpMaterialsAndCare.
  ///
  /// In en, this message translates to:
  /// **'Materials & Care'**
  String get pdpMaterialsAndCare;

  /// No description provided for @pdpMaterialsAndCareDetails.
  ///
  /// In en, this message translates to:
  /// **'100% Cotton'**
  String get pdpMaterialsAndCareDetails;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @categoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categoriesTitle;

  /// No description provided for @bannersErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t load banners.'**
  String get bannersErrorMessage;

  /// No description provided for @categoriesErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t load categories.'**
  String get categoriesErrorMessage;

  /// No description provided for @productsErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t load products.'**
  String get productsErrorMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
