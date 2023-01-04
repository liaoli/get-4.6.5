import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'zh_CN.dart';
import 'en_us.dart';
import 'pt_br.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'pt_BR': pt_BR,
        'zh_CN': zh_CN,
      };
}
