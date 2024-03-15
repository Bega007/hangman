// ignore_for_file: avoid_escaping_inner_quotes

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// ignore: implementation_imports
import 'package:flutter_localizations/src/utils/date_localizations.dart' as util;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols_data.dart' as intl;

// Extended set of localized date/time patterns for locale [tk].
const Map<String, String> _tkLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'dd.MM', // NUM_MONTH_DAY
  'MEd': 'EEE, dd.MM', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'ccc, d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'cccc, d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'MM.y', // YEAR_NUM_MONTH
  'yMd': 'dd.MM.y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'ccc, dd.MM.y \'ý\'.', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'LLL y \'ý\'.', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y \'ý\'.', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE, d MMM y \'ý\'.', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'LLLL y \'ý\'.', // YEAR_MONTH
  'yMMMMd': 'd MMMM y \'ý\'.', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE, d MMMM y \'ý\'.', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y \'ý\'.', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y \'ý\'.', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'HH', // HOUR
  'jm': 'HH:mm', // HOUR_MINUTE
  'jms': 'HH:mm:ss', // HOUR_MINUTE_SECOND
  'jmv': 'HH:mm v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'HH:mm z', // HOUR_MINUTETZ
  'jz': 'HH z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ', // ABBR_UTC_TZ
};

// Date/time formatting symbols for locale [tk].
final intl.DateSymbols _tkDateSymbols = intl.DateSymbols(
  NAME: 'tk',
  ERAS: const ['до н. э.', 'н. э.'],
  ERANAMES: const ['до Рождества Христова', 'от Рождества Христова'],
  NARROWMONTHS: const ['Ý', 'F', 'M', 'A', 'M', 'I', 'I', 'A', 'S', 'O', 'N', 'D'],
  STANDALONENARROWMONTHS: const ['Ý', 'F', 'M', 'A', 'M', 'I', 'I', 'A', 'S', 'O', 'N', 'D'],
  MONTHS: const [
    'ýanwar',
    'fewral',
    'mart',
    'aprel',
    'maý',
    'iýun',
    'iýul',
    'awgust',
    'sentýabr',
    'oktýabr',
    'noýabr',
    'dekabr',
  ],
  STANDALONEMONTHS: const [
    'ýanwar',
    'fewral',
    'mart',
    'aprel',
    'maý',
    'iýun',
    'iýul',
    'awgust',
    'sentýabr',
    'oktýabr',
    'noýabr',
    'dekabr',
  ],
  SHORTMONTHS: const [
    'ýan.',
    'few.',
    'mart',
    'apr.',
    'maý',
    'iýun',
    'iýul',
    'awg.',
    'sent.',
    'okt.',
    'noý.',
    'dek.',
  ],
  STANDALONESHORTMONTHS: const [
    'ýan.',
    'few.',
    'mart',
    'apr.',
    'maý',
    'iýun',
    'iýul',
    'awg.',
    'sent.',
    'okt.',
    'noý.',
    'dek.',
  ],
  WEEKDAYS: const [
    'ýekşenbe',
    'duşenbe',
    'şişenbe',
    'çarşenbe',
    'penşenbe',
    'anna',
    'şenbe',
  ],
  STANDALONEWEEKDAYS: const [
    'ýekşenbe',
    'duşenbe',
    'şişenbe',
    'çarşenbe',
    'penşenbe',
    'anna',
    'şenbe',
  ],
  SHORTWEEKDAYS: const ['ýş', 'dş', 'şş', 'çş', 'pş', 'an', 'şn'],
  STANDALONESHORTWEEKDAYS: const ['ýş', 'dş', 'şş', 'çş', 'pş', 'an', 'şn'],
  NARROWWEEKDAYS: const ['ýş', 'dş', 'şş', 'çş', 'pş', 'an', 'şn'],
  STANDALONENARROWWEEKDAYS: const ['Ý', 'D', 'Ş', 'Ç', 'P', 'A', 'Ş'],
  SHORTQUARTERS: const ['1-nji kw.', '2-nji kw.', '3-nji kw.', '4-nji kw.'],
  QUARTERS: const ['1-nji kwartal', '2-nji kwartal', '3-nji kwartal', '4-nji kwartal'],
  AMPMS: const ['AM', 'PM'],
  DATEFORMATS: const ['EEEE, d MMMM y \'ý\'.', 'd MMMM y \'ý\'.', 'd MMM y \'ý\'.', 'dd.MM.y'],
  TIMEFORMATS: const ['HH:mm:ss zzzz', 'HH:mm:ss z', 'HH:mm:ss', 'HH:mm'],
  DATETIMEFORMATS: const ['{1}, {0}', '{1}, {0}', '{1}, {0}', '{1}, {0}'],
  FIRSTDAYOFWEEK: 0,
  WEEKENDRANGE: const [5, 6],
  FIRSTWEEKCUTOFFDAY: 3,
);

class _TkMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const _TkMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'tk';

  static final Map<Locale, Future<MaterialLocalizations>> _loadedTranslations =
      <Locale, Future<MaterialLocalizations>>{};

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    assert(isSupported(locale));

    return _loadedTranslations.putIfAbsent(locale, () {
      util.loadDateIntlDataIfNotLoaded();

      final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
      assert(
        locale.toString() == localeName,
        'Flutter does not support the non-standard locale form $locale (which '
        'might be $localeName',
      );

      // The locale (in this case `tk`) needs to be initialized into the custom
      // date symbols and patterns setup that Flutter uses.
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: _tkDateSymbols,
        patterns: _tkLocaleDatePatterns,
      );

      // ignore: unnecessary_null_checks
      intl.numberFormatSymbols[localeName] = intl.numberFormatSymbols['ru']!;
      intl.compactNumberSymbols[localeName] = intl.compactNumberSymbols['ru']!;

      intl.DateFormat fullYearFormat;
      intl.DateFormat compactDateFormat;
      intl.DateFormat shortDateFormat;
      intl.DateFormat mediumDateFormat;
      intl.DateFormat longDateFormat;
      intl.DateFormat yearMonthFormat;
      intl.DateFormat shortMonthDayFormat;
      if (intl.DateFormat.localeExists(localeName)) {
        fullYearFormat = intl.DateFormat.y(localeName);
        compactDateFormat = intl.DateFormat.yMd(localeName);
        shortDateFormat = intl.DateFormat.yMMMd(localeName);
        mediumDateFormat = intl.DateFormat.MMMEd(localeName);
        longDateFormat = intl.DateFormat.yMMMMEEEEd(localeName);
        yearMonthFormat = intl.DateFormat.yMMMM(localeName);
        shortMonthDayFormat = intl.DateFormat.MMMd(localeName);
      } else if (intl.DateFormat.localeExists(locale.languageCode)) {
        fullYearFormat = intl.DateFormat.y(locale.languageCode);
        compactDateFormat = intl.DateFormat.yMd(locale.languageCode);
        shortDateFormat = intl.DateFormat.yMMMd(locale.languageCode);
        mediumDateFormat = intl.DateFormat.MMMEd(locale.languageCode);
        longDateFormat = intl.DateFormat.yMMMMEEEEd(locale.languageCode);
        yearMonthFormat = intl.DateFormat.yMMMM(locale.languageCode);
        shortMonthDayFormat = intl.DateFormat.MMMd(locale.languageCode);
      } else {
        fullYearFormat = intl.DateFormat.y();
        compactDateFormat = intl.DateFormat.yMd();
        shortDateFormat = intl.DateFormat.yMMMd();
        mediumDateFormat = intl.DateFormat.MMMEd();
        longDateFormat = intl.DateFormat.yMMMMEEEEd();
        yearMonthFormat = intl.DateFormat.yMMMM();
        shortMonthDayFormat = intl.DateFormat.MMMd();
      }

      return SynchronousFuture<MaterialLocalizations>(
        MaterialLocalizationTk(
          localeName: localeName,
          // The `intl` library's NumberFormat class is generated from CLDR data
          // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
          // Unfortunately, there is no way to use a locale that isn't defined in
          // this map and the only way to work around this is to use a listed
          // locale's NumberFormat symbols. So, here we use the number formats
          // for 'en_US' instead.
          decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
          twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
          // DateFormat here will use the symbols and patterns provided in the
          // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
          // However, an alternative is to simply use a supported locale's
          // DateFormat symbols, similar to NumberFormat above.
          fullYearFormat: fullYearFormat,
          compactDateFormat: compactDateFormat,
          shortDateFormat: shortDateFormat,
          mediumDateFormat: mediumDateFormat,
          longDateFormat: longDateFormat,
          yearMonthFormat: yearMonthFormat,
          shortMonthDayFormat: shortMonthDayFormat,
        ),
      );
    });
  }

  @override
  bool shouldReload(_TkMaterialLocalizationsDelegate old) => false;
}

class _TkCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const _TkCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'tk';

  static final Map<Locale, Future<CupertinoLocalizations>> _loadedTranslations =
      <Locale, Future<CupertinoLocalizations>>{};

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    assert(isSupported(locale));
    return _loadedTranslations.putIfAbsent(locale, () {
      util.loadDateIntlDataIfNotLoaded();

      final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
      assert(
        locale.toString() == localeName,
        'Flutter does not support the non-standard locale form $locale (which '
        'might be $localeName',
      );

      // The locale (in this case `tk`) needs to be initialized into the custom
      // date symbols and patterns setup that Flutter uses.
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: _tkDateSymbols,
        patterns: _tkLocaleDatePatterns,
      );

      // ignore: unnecessary_null_checks
      intl.numberFormatSymbols[localeName] = intl.numberFormatSymbols['ru']!;
      intl.compactNumberSymbols[localeName] = intl.compactNumberSymbols['ru']!;

      late intl.DateFormat fullYearFormat;
      late intl.DateFormat dayFormat;
      late intl.DateFormat mediumDateFormat;
      // We don't want any additional decoration here. The am/pm is handled in
      // the date picker. We just want an hour number localized.
      late intl.DateFormat singleDigitHourFormat;
      late intl.DateFormat singleDigitMinuteFormat;
      late intl.DateFormat doubleDigitMinuteFormat;
      late intl.DateFormat singleDigitSecondFormat;
      late intl.NumberFormat decimalFormat;

      void loadFormats(String? locale) {
        fullYearFormat = intl.DateFormat.y(locale);
        dayFormat = intl.DateFormat.d(locale);
        mediumDateFormat = intl.DateFormat.MMMEd(locale);
        // TODO(xster): fix when https://github.com/dart-lang/intl/issues/207 is resolved.
        singleDigitHourFormat = intl.DateFormat('HH', locale);
        singleDigitMinuteFormat = intl.DateFormat.m(locale);
        doubleDigitMinuteFormat = intl.DateFormat('mm', locale);
        singleDigitSecondFormat = intl.DateFormat.s(locale);

        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'en_US' instead.
        decimalFormat = intl.NumberFormat('#,##0.###', 'en_US');
      }

      if (intl.DateFormat.localeExists(localeName)) {
        loadFormats(localeName);
      } else if (intl.DateFormat.localeExists(locale.languageCode)) {
        loadFormats(locale.languageCode);
      } else {
        loadFormats(null);
      }

      return SynchronousFuture<CupertinoLocalizations>(
        CupertinoLocalizationTk(
          fullYearFormat: fullYearFormat,
          dayFormat: dayFormat,
          mediumDateFormat: mediumDateFormat,
          singleDigitHourFormat: singleDigitHourFormat,
          singleDigitMinuteFormat: singleDigitMinuteFormat,
          doubleDigitMinuteFormat: doubleDigitMinuteFormat,
          singleDigitSecondFormat: singleDigitSecondFormat,
          decimalFormat: decimalFormat,
        ),
      );
    });
  }

  @override
  bool shouldReload(_TkCupertinoLocalizationsDelegate old) => false;
}

/// A custom set of localizations for the 'tk' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class MaterialLocalizationTk extends GlobalMaterialLocalizations {
  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _TkMaterialLocalizationsDelegate();

  /// Create an instance of the translation bundle for Turkmen.
  ///
  /// For details on the meaning of the arguments, see [GlobalMaterialLocalizations].
  const MaterialLocalizationTk({
    super.localeName = 'tk',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  //TODO: localize

  @override
  String get aboutListTileTitleRaw => r'$applicationName: сведения';

  @override
  String get alertDialogLabel => 'Оповещение';

  @override
  String get anteMeridiemAbbreviation => 'АМ';

  @override
  String get backButtonTooltip => 'Назад';

  @override
  String get bottomSheetLabel => 'Нижний экран';

  @override
  String get calendarModeButtonLabel => 'Переключиться на календарь';

  @override
  String get cancelButtonLabel => 'Отмена';

  @override
  String get closeButtonLabel => 'Закрыть';

  @override
  String get closeButtonTooltip => 'Закрыть';

  @override
  String get collapsedHint => 'Expanded';

  @override
  String get collapsedIconTapHint => 'Развернуть';

  @override
  String get continueButtonLabel => 'Продолжить';

  @override
  String get copyButtonLabel => 'Копировать';

  @override
  String get currentDateLabel => 'Сегодня';

  @override
  String get cutButtonLabel => 'Вырезать';

  @override
  String get dateHelpText => 'дд.мм.гггг';

  @override
  String get dateInputLabel => 'Введите дату';

  @override
  String get dateOutOfRangeLabel => 'Дата находится вне допустимого диапазона.';

  @override
  String get datePickerHelpText => 'Выберите дату';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Дата окончания: $fullDate';

  @override
  String get dateRangeEndLabel => 'Дата окончания';

  @override
  String get dateRangePickerHelpText => 'Выберите диапазон дат';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'Дата начала: $fullDate';

  @override
  String get dateRangeStartLabel => 'Дата начала';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Удалить';

  @override
  String get dialModeButtonLabel => 'Перейти в режим выбора времени';

  @override
  String get dialogLabel => 'Диалоговое окно';

  @override
  String get drawerLabel => 'Меню навигации';

  @override
  String get expandedHint => 'Collapsed';

  @override
  String get expandedIconTapHint => 'Свернуть';

  @override
  String get expansionTileCollapsedHint => 'double tap to expand';

  @override
  String get expansionTileCollapsedTapHint => 'Expand for more details';

  @override
  String get expansionTileExpandedHint => "double tap to collapse'";

  @override
  String get expansionTileExpandedTapHint => 'Collapse';

  @override
  String get firstPageTooltip => 'Первая страница';

  @override
  String get hideAccountsLabel => 'Скрыть аккаунты';

  @override
  String get inputDateModeButtonLabel => 'Переключиться на ручной ввод';

  @override
  String get inputTimeModeButtonLabel => 'Перейти в режим ввода текста';

  @override
  String get invalidDateFormatLabel => 'Недопустимый формат даты.';

  @override
  String get invalidDateRangeLabel => 'Недопустимый диапазон.';

  @override
  String get invalidTimeLabel => 'Указано недопустимое время.';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Следующий канал';

  @override
  String get keyboardKeyChannelUp => 'Предыдущий канал';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Извлечь';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Ввод';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Питание';

  @override
  String get keyboardKeyPowerOff => 'Отключить питание';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Выбрать';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Пробел';

  @override
  String get lastPageTooltip => 'Последняя страница';

  @override
  String? get licensesPackageDetailTextFew => r'$licenseCount лицензии';

  @override
  String? get licensesPackageDetailTextMany => r'$licenseCount лицензий';

  @override
  String? get licensesPackageDetailTextOne => '1 лицензия';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount лицензии';

  @override
  String? get licensesPackageDetailTextTwo => null;

  @override
  String? get licensesPackageDetailTextZero => 'No licenses';

  @override
  String get licensesPageTitle => 'Лицензии';

  @override
  String get menuBarMenuLabel => 'Строка меню';

  @override
  String get modalBarrierDismissLabel => 'Закрыть';

  @override
  String get moreButtonTooltip => 'Ещё';

  @override
  String get nextMonthTooltip => 'Следующий месяц';

  @override
  String get nextPageTooltip => 'Следующая страница';

  @override
  String get okButtonLabel => 'ОК';

  @override
  String get openAppDrawerTooltip => 'Открыть меню навигации';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow из $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw => r'$firstRow–$lastRow из примерно $rowCount';

  @override
  String get pasteButtonLabel => 'Вставить';

  @override
  String get popupMenuLabel => 'Всплывающее меню';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get previousMonthTooltip => 'Предыдущий месяц';

  @override
  String get previousPageTooltip => 'Предыдущая страница';

  @override
  String get refreshIndicatorSemanticLabel => 'Обновление';

  @override
  String? get remainingTextFieldCharacterCountFew => r'Осталось $remainingCount символа';

  @override
  String? get remainingTextFieldCharacterCountMany => r'Осталось $remainingCount символов';

  @override
  String? get remainingTextFieldCharacterCountOne => 'Остался 1 символ';

  @override
  String get remainingTextFieldCharacterCountOther => r'Осталось $remainingCount символа';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String? get remainingTextFieldCharacterCountZero => 'TBD';

  @override
  String get reorderItemDown => 'Переместить вниз';

  @override
  String get reorderItemLeft => 'Переместить влево';

  @override
  String get reorderItemRight => 'Переместить вправо';

  @override
  String get reorderItemToEnd => 'Переместить в конец';

  @override
  String get reorderItemToStart => 'Переместить в начало';

  @override
  String get reorderItemUp => 'Переместить вверх';

  @override
  String get rowsPerPageTitle => 'Строк на странице:';

  @override
  String get saveButtonLabel => 'Сохранить';

  @override
  String get scanTextButtonLabel => 'Сканировать текст';

  @override
  String get scrimLabel => 'Маска';

  @override
  String get scrimOnTapHintRaw => r'Закрыть $modalRouteContentName';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'Поиск';

  @override
  String get selectAllButtonLabel => 'Выбрать все';

  @override
  String get selectYearSemanticsLabel => 'Выберите год';

  @override
  String? get selectedRowCountTitleFew => r'Выбрано $selectedRowCount объекта';

  @override
  String? get selectedRowCountTitleMany => r'Выбрано $selectedRowCount объектов';

  @override
  String? get selectedRowCountTitleOne => 'Выбран 1 объект';

  @override
  String get selectedRowCountTitleOther => r'Выбрано $selectedRowCount объекта';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String? get selectedRowCountTitleZero => 'Строки не выбраны';

  @override
  String get showAccountsLabel => 'Показать аккаунты';

  @override
  String get showMenuTooltip => 'Показать меню';

  @override
  String get signedInLabel => 'Вход выполнен';

  @override
  String get tabLabelRaw => r'Вкладка $tabIndex из $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.H_colon_mm;

  @override
  String get timePickerDialHelpText => 'Выберите время';

  @override
  String get timePickerHourLabel => 'Часы';

  @override
  String get timePickerHourModeAnnouncement => 'Выберите часы';

  @override
  String get timePickerInputHelpText => 'Укажите время';

  @override
  String get timePickerMinuteLabel => 'Минуты';

  @override
  String get timePickerMinuteModeAnnouncement => 'Выберите минуты';

  @override
  String get unspecifiedDate => 'Дата';

  @override
  String get unspecifiedDateRange => 'Диапазон дат';

  @override
  String get viewLicensesButtonLabel => 'Посмотреть лицензии';

  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => throw UnimplementedError();

  @override
  // TODO: implement menuDismissLabel
  String get menuDismissLabel => throw UnimplementedError();

  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => throw UnimplementedError();

  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => throw UnimplementedError();
}

/// A custom set of localizations for the 'tk' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class CupertinoLocalizationTk extends GlobalCupertinoLocalizations {
  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _TkCupertinoLocalizationsDelegate();

  /// Create an instance of the translation bundle for Turkmen.
  ///
  /// For details on the meaning of the arguments, see [GlobalCupertinoLocalizations].
  const CupertinoLocalizationTk({
    String localeName = 'tk',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat dayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat singleDigitHourFormat,
    required intl.DateFormat singleDigitMinuteFormat,
    required intl.DateFormat doubleDigitMinuteFormat,
    required intl.DateFormat singleDigitSecondFormat,
    required intl.NumberFormat decimalFormat,
  }) : super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          dayFormat: dayFormat,
          mediumDateFormat: mediumDateFormat,
          singleDigitHourFormat: singleDigitHourFormat,
          singleDigitMinuteFormat: singleDigitMinuteFormat,
          doubleDigitMinuteFormat: doubleDigitMinuteFormat,
          singleDigitSecondFormat: singleDigitSecondFormat,
          decimalFormat: decimalFormat,
        );

  //TODO localize

  @override
  String get alertDialogLabel => 'Оповещение';

  @override
  String get anteMeridiemAbbreviation => 'АМ';

  @override
  String get copyButtonLabel => 'Копировать';

  @override
  String get cutButtonLabel => 'Вырезать';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => r'$hour часа';

  @override
  String? get datePickerHourSemanticsLabelMany => r'$hour часов';

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour час';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour часа';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => r'$minute минуты';

  @override
  String? get datePickerMinuteSemanticsLabelMany => r'$minute минут';

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 минута';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute минуты';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get modalBarrierDismissLabel => 'Закрыть';

  @override
  String get pasteButtonLabel => 'Вставить';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get searchTextFieldPlaceholderLabel => 'Поиск';

  @override
  String get selectAllButtonLabel => 'Выбрать все';

  @override
  String get tabSemanticsLabelRaw => r'Вкладка $tabIndex из $tabCount';

  @override
  String? get timerPickerHourLabelFew => 'часа';

  @override
  String? get timerPickerHourLabelMany => 'часов';

  @override
  String? get timerPickerHourLabelOne => 'час';

  @override
  String get timerPickerHourLabelOther => 'часа';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => 'мин.';

  @override
  String? get timerPickerMinuteLabelMany => 'мин.';

  @override
  String? get timerPickerMinuteLabelOne => 'мин.';

  @override
  String get timerPickerMinuteLabelOther => 'мин.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => 'сек.';

  @override
  String? get timerPickerSecondLabelMany => 'сек.';

  @override
  String? get timerPickerSecondLabelOne => 'сек.';

  @override
  String get timerPickerSecondLabelOther => 'сек.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Сегодня';

  @override
  String get noSpellCheckReplacementsLabel => 'noSpellCheckReplacementsLabel';

  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => throw UnimplementedError();

  @override
  // TODO: implement menuDismissLabel
  String get menuDismissLabel => throw UnimplementedError();

  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => throw UnimplementedError();

  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => throw UnimplementedError();
  
  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => throw UnimplementedError();
}
