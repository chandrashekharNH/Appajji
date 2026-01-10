import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
    Locale('kn'),
    Locale('ta'),
    Locale('te')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Appaji'**
  String get appName;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @media.
  ///
  /// In en, this message translates to:
  /// **'Media'**
  String get media;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get about;

  /// No description provided for @donate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get donate;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @temple.
  ///
  /// In en, this message translates to:
  /// **'Grand Temple'**
  String get temple;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @past.
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get past;

  /// No description provided for @aboutSwamiji.
  ///
  /// In en, this message translates to:
  /// **'About Swamiji'**
  String get aboutSwamiji;

  /// No description provided for @upcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Events'**
  String get upcomingEvents;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @templeHighlights.
  ///
  /// In en, this message translates to:
  /// **'Temple Highlights'**
  String get templeHighlights;

  /// No description provided for @heroQuote.
  ///
  /// In en, this message translates to:
  /// **'Dharma protects those who protect it'**
  String get heroQuote;

  /// No description provided for @swamijiDesc.
  ///
  /// In en, this message translates to:
  /// **'A spiritual guide spreading dharma, compassion, and service.'**
  String get swamijiDesc;

  /// No description provided for @drawerTitle.
  ///
  /// In en, this message translates to:
  /// **'Appaji'**
  String get drawerTitle;

  /// No description provided for @drawerNavigation.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get drawerNavigation;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @drawerHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get drawerHome;

  /// No description provided for @drawerAbout.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get drawerAbout;

  /// No description provided for @drawerTemple.
  ///
  /// In en, this message translates to:
  /// **'Grand Temple'**
  String get drawerTemple;

  /// No description provided for @drawerDonate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get drawerDonate;

  /// No description provided for @drawerGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get drawerGallery;

  /// No description provided for @drawerEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get drawerEvents;

  /// No description provided for @drawerLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get drawerLanguage;

  /// No description provided for @templeTitle.
  ///
  /// In en, this message translates to:
  /// **'Shri Lakshmi Venkateshwara Grand Temple'**
  String get templeTitle;

  /// No description provided for @templeVisionTitle.
  ///
  /// In en, this message translates to:
  /// **'Temple Vision'**
  String get templeVisionTitle;

  /// No description provided for @templeVisionDesc.
  ///
  /// In en, this message translates to:
  /// **'To build a grand temple as a center of devotion, culture, and spirituality.'**
  String get templeVisionDesc;

  /// No description provided for @templeArchitectureTitle.
  ///
  /// In en, this message translates to:
  /// **'Architecture & Design'**
  String get templeArchitectureTitle;

  /// No description provided for @templeArchitectureDesc.
  ///
  /// In en, this message translates to:
  /// **'Designed in traditional Dravidian architectural style.'**
  String get templeArchitectureDesc;

  /// No description provided for @templeConstructionTitle.
  ///
  /// In en, this message translates to:
  /// **'Construction Status'**
  String get templeConstructionTitle;

  /// No description provided for @templeConstructionDesc.
  ///
  /// In en, this message translates to:
  /// **'Phase one of construction is currently in progress.'**
  String get templeConstructionDesc;

  /// No description provided for @templeSupportTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Support Matters'**
  String get templeSupportTitle;

  /// No description provided for @templeSupportDesc.
  ///
  /// In en, this message translates to:
  /// **'Your donations and service are essential for temple construction.'**
  String get templeSupportDesc;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'hi', 'kn', 'ta', 'te'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
    case 'kn': return AppLocalizationsKn();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
