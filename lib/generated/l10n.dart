// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `%`
  String get splash_screen_percent {
    return Intl.message(
      '%',
      name: 'splash_screen_percent',
      desc: '',
      args: [],
    );
  }

  /// `Food Storm`
  String get splash_screen_tittle {
    return Intl.message(
      'Food Storm',
      name: 'splash_screen_tittle',
      desc: '',
      args: [],
    );
  }

  /// `Добавить акцию`
  String get app_bar_elev_button {
    return Intl.message(
      'Добавить акцию',
      name: 'app_bar_elev_button',
      desc: '',
      args: [],
    );
  }

  /// `Тольятти`
  String get app_bar_text_button {
    return Intl.message(
      'Тольятти',
      name: 'app_bar_text_button',
      desc: '',
      args: [],
    );
  }

  /// `Поиск по акциям`
  String get find_for_promotions {
    return Intl.message(
      'Поиск по акциям',
      name: 'find_for_promotions',
      desc: '',
      args: [],
    );
  }

  /// `Акции`
  String get promotions {
    return Intl.message(
      'Акции',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `Карта`
  String get map {
    return Intl.message(
      'Карта',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favorites {
    return Intl.message(
      'Избранное',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Очистить`
  String get clear {
    return Intl.message(
      'Очистить',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Здесь отображаются избранные акции. Нажмите на сердечко, чтобы добавить акцию в “Избранное”.`
  String get favorite_is_clear_text {
    return Intl.message(
      'Здесь отображаются избранные акции. Нажмите на сердечко, чтобы добавить акцию в “Избранное”.',
      name: 'favorite_is_clear_text',
      desc: '',
      args: [],
    );
  }

  /// `Перейти к акциям`
  String get favorite_is_clear_button {
    return Intl.message(
      'Перейти к акциям',
      name: 'favorite_is_clear_button',
      desc: '',
      args: [],
    );
  }

  /// `Удалено из избранного`
  String get delete_favorite_text {
    return Intl.message(
      'Удалено из избранного',
      name: 'delete_favorite_text',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get delete_favorite_text_button {
    return Intl.message(
      'Отменить',
      name: 'delete_favorite_text_button',
      desc: '',
      args: [],
    );
  }

  /// `Добавление акции`
  String get add_promotion_main_tittle {
    return Intl.message(
      'Добавление акции',
      name: 'add_promotion_main_tittle',
      desc: '',
      args: [],
    );
  }

  /// `Если вы менеджер ресторана и хотите добавить акцию, то пожалуйста заполните и отправьте форму ниже. Это бесплатно.`
  String get add_promotion_main_subtittle {
    return Intl.message(
      'Если вы менеджер ресторана и хотите добавить акцию, то пожалуйста заполните и отправьте форму ниже. Это бесплатно.',
      name: 'add_promotion_main_subtittle',
      desc: '',
      args: [],
    );
  }

  /// `Название заведения`
  String get add_promotion_place_name {
    return Intl.message(
      'Название заведения',
      name: 'add_promotion_place_name',
      desc: '',
      args: [],
    );
  }

  /// `Название акции`
  String get add_promotion_promotion_name {
    return Intl.message(
      'Название акции',
      name: 'add_promotion_promotion_name',
      desc: '',
      args: [],
    );
  }

  /// `Введите название`
  String get add_promotion_promotion_enter {
    return Intl.message(
      'Введите название',
      name: 'add_promotion_promotion_enter',
      desc: '',
      args: [],
    );
  }

  /// `Описание акции`
  String get add_promotion_promotion_description {
    return Intl.message(
      'Описание акции',
      name: 'add_promotion_promotion_description',
      desc: '',
      args: [],
    );
  }

  /// `Введите описание`
  String get add_promotion_enter_description {
    return Intl.message(
      'Введите описание',
      name: 'add_promotion_enter_description',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала`
  String get add_promotion_start_date {
    return Intl.message(
      'Дата начала',
      name: 'add_promotion_start_date',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания`
  String get add_promotion_end_date {
    return Intl.message(
      'Дата окончания',
      name: 'add_promotion_end_date',
      desc: '',
      args: [],
    );
  }

  /// `Выберите дату`
  String get add_promotion_select_date {
    return Intl.message(
      'Выберите дату',
      name: 'add_promotion_select_date',
      desc: '',
      args: [],
    );
  }

  /// `Фото`
  String get add_promotion_photo {
    return Intl.message(
      'Фото',
      name: 'add_promotion_photo',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add_promotion_photo_add {
    return Intl.message(
      'Добавить',
      name: 'add_promotion_photo_add',
      desc: '',
      args: [],
    );
  }

  /// `Телефон менеджера`
  String get add_promotion_manager_phone {
    return Intl.message(
      'Телефон менеджера',
      name: 'add_promotion_manager_phone',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона`
  String get add_promotion_manager_phone_subtitle {
    return Intl.message(
      'Введите номер телефона',
      name: 'add_promotion_manager_phone_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get add_promotion_email {
    return Intl.message(
      'E-mail',
      name: 'add_promotion_email',
      desc: '',
      args: [],
    );
  }

  /// `Введите ваш e-mail`
  String get add_promotion_email_add {
    return Intl.message(
      'Введите ваш e-mail',
      name: 'add_promotion_email_add',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get add_promotion_send_button {
    return Intl.message(
      'Отправить',
      name: 'add_promotion_send_button',
      desc: '',
      args: [],
    );
  }

  /// `Пожаловаться`
  String get about_card_report {
    return Intl.message(
      'Пожаловаться',
      name: 'about_card_report',
      desc: '',
      args: [],
    );
  }

  /// `О ресторане`
  String get about_card_restaurant {
    return Intl.message(
      'О ресторане',
      name: 'about_card_restaurant',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get about_card_address {
    return Intl.message(
      'Адрес',
      name: 'about_card_address',
      desc: '',
      args: [],
    );
  }

  /// `Режим работы`
  String get about_card_open_time {
    return Intl.message(
      'Режим работы',
      name: 'about_card_open_time',
      desc: '',
      args: [],
    );
  }

  /// `Забронировать`
  String get about_card_booking {
    return Intl.message(
      'Забронировать',
      name: 'about_card_booking',
      desc: '',
      args: [],
    );
  }

  /// `с`
  String get start_date {
    return Intl.message(
      'с',
      name: 'start_date',
      desc: '',
      args: [],
    );
  }

  /// `до`
  String get end_date {
    return Intl.message(
      'до',
      name: 'end_date',
      desc: '',
      args: [],
    );
  }

  /// `Выберите город`
  String get choise_city {
    return Intl.message(
      'Выберите город',
      name: 'choise_city',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
