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

  /// No description provided for @thought1.
  ///
  /// In en, this message translates to:
  /// **'Dharma sustains those who live by its truth.'**
  String get thought1;

  /// No description provided for @thought2.
  ///
  /// In en, this message translates to:
  /// **'When one walks the path of Dharma, protection follows naturally.'**
  String get thought2;

  /// No description provided for @thought3.
  ///
  /// In en, this message translates to:
  /// **'Dharma is not defended by force, but by righteous living.'**
  String get thought3;

  /// No description provided for @thought4.
  ///
  /// In en, this message translates to:
  /// **'Live in Dharma, and Dharma becomes your shield.'**
  String get thought4;

  /// No description provided for @thought5.
  ///
  /// In en, this message translates to:
  /// **'Dharma stands with the righteous.'**
  String get thought5;

  /// No description provided for @thought6.
  ///
  /// In en, this message translates to:
  /// **'Service to humanity is service to the Divine.'**
  String get thought6;

  /// No description provided for @thought7.
  ///
  /// In en, this message translates to:
  /// **'True peace begins within.'**
  String get thought7;

  /// No description provided for @thought8.
  ///
  /// In en, this message translates to:
  /// **'Faith, patience, and devotion shape destiny.'**
  String get thought8;

  /// No description provided for @thought9.
  ///
  /// In en, this message translates to:
  /// **'Spiritual growth is the highest achievement.'**
  String get thought9;

  /// No description provided for @avatarMatsyaName.
  ///
  /// In en, this message translates to:
  /// **'Matsya Avatar'**
  String get avatarMatsyaName;

  /// No description provided for @avatarMatsyaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Protected the Vedas and humanity during the great deluge.'**
  String get avatarMatsyaPurpose;

  /// No description provided for @avatarMatsyaTeach.
  ///
  /// In en, this message translates to:
  /// **'Preservation of knowledge and righteousness.'**
  String get avatarMatsyaTeach;

  /// No description provided for @avatarKurmaName.
  ///
  /// In en, this message translates to:
  /// **'Kurma Avatar'**
  String get avatarKurmaName;

  /// No description provided for @avatarKurmaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Supported Mount Mandara during the churning of the ocean.'**
  String get avatarKurmaPurpose;

  /// No description provided for @avatarKurmaTeach.
  ///
  /// In en, this message translates to:
  /// **'Patience and steadfast support.'**
  String get avatarKurmaTeach;

  /// No description provided for @avatarVarahaName.
  ///
  /// In en, this message translates to:
  /// **'Varaha Avatar'**
  String get avatarVarahaName;

  /// No description provided for @avatarVarahaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Rescued Mother Earth from destruction.'**
  String get avatarVarahaPurpose;

  /// No description provided for @avatarVarahaTeach.
  ///
  /// In en, this message translates to:
  /// **'Protection of nature and courage.'**
  String get avatarVarahaTeach;

  /// No description provided for @avatarNarasimhaName.
  ///
  /// In en, this message translates to:
  /// **'Narasimha Avatar'**
  String get avatarNarasimhaName;

  /// No description provided for @avatarNarasimhaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Protected devotee Prahlada and destroyed evil.'**
  String get avatarNarasimhaPurpose;

  /// No description provided for @avatarNarasimhaTeach.
  ///
  /// In en, this message translates to:
  /// **'True devotion is always protected.'**
  String get avatarNarasimhaTeach;

  /// No description provided for @avatarVamanaName.
  ///
  /// In en, this message translates to:
  /// **'Vamana Avatar'**
  String get avatarVamanaName;

  /// No description provided for @avatarVamanaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Subdued King Bali’s ego with wisdom.'**
  String get avatarVamanaPurpose;

  /// No description provided for @avatarVamanaTeach.
  ///
  /// In en, this message translates to:
  /// **'Humility over pride.'**
  String get avatarVamanaTeach;

  /// No description provided for @avatarParashuramaName.
  ///
  /// In en, this message translates to:
  /// **'Parashurama Avatar'**
  String get avatarParashuramaName;

  /// No description provided for @avatarParashuramaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Eliminated corrupt and unjust rulers.'**
  String get avatarParashuramaPurpose;

  /// No description provided for @avatarParashuramaTeach.
  ///
  /// In en, this message translates to:
  /// **'Justice and discipline.'**
  String get avatarParashuramaTeach;

  /// No description provided for @avatarRamaName.
  ///
  /// In en, this message translates to:
  /// **'Rama Avatar'**
  String get avatarRamaName;

  /// No description provided for @avatarRamaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Established Dharma through ideal conduct.'**
  String get avatarRamaPurpose;

  /// No description provided for @avatarRamaTeach.
  ///
  /// In en, this message translates to:
  /// **'Duty, sacrifice, and righteousness.'**
  String get avatarRamaTeach;

  /// No description provided for @avatarKrishnaName.
  ///
  /// In en, this message translates to:
  /// **'Krishna Avatar'**
  String get avatarKrishnaName;

  /// No description provided for @avatarKrishnaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Guided humanity through the Bhagavad Gita.'**
  String get avatarKrishnaPurpose;

  /// No description provided for @avatarKrishnaTeach.
  ///
  /// In en, this message translates to:
  /// **'Karma Yoga and devotion.'**
  String get avatarKrishnaTeach;

  /// No description provided for @avatarBuddhaName.
  ///
  /// In en, this message translates to:
  /// **'Buddha Avatar'**
  String get avatarBuddhaName;

  /// No description provided for @avatarBuddhaPurpose.
  ///
  /// In en, this message translates to:
  /// **'Taught the path of non-violence and compassion.'**
  String get avatarBuddhaPurpose;

  /// No description provided for @avatarBuddhaTeach.
  ///
  /// In en, this message translates to:
  /// **'Mindfulness and compassion.'**
  String get avatarBuddhaTeach;

  /// No description provided for @avatarKalkiName.
  ///
  /// In en, this message translates to:
  /// **'Kalki Avatar'**
  String get avatarKalkiName;

  /// No description provided for @avatarKalkiPurpose.
  ///
  /// In en, this message translates to:
  /// **'Will restore Dharma at the end of Kali Yuga.'**
  String get avatarKalkiPurpose;

  /// No description provided for @avatarKalkiTeach.
  ///
  /// In en, this message translates to:
  /// **'Evil will ultimately be destroyed.'**
  String get avatarKalkiTeach;
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
