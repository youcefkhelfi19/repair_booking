import 'package:get/get.dart';

import '../models/language_model.dart';
class LanguageConstants {
  static const String countryCode = "country_code";
  static  const String languageCode = "language_code";

  static  List<LanguageModel> languagesList = [
    LanguageModel(countryCode: 'US', languageCode: 'en', languageName: "English"),
    LanguageModel(countryCode: 'FR', languageCode: 'fr', languageName: "French"),

  ];
}


List<String> repairStatus =[
  'Pending',
  'In Progress',
  'Completed',
  'Cancelled'
];
List<String> repairStatusLabels =[
  'Pending'.tr,
  'In Progress'.tr,
  'Completed'.tr,
  'Cancelled'.tr
];

List<String> storedStatus =[
  'In Store',
  'Delivered',
  'Returned'
];
List<String> storedStatusLabels =[
  'In Store'.tr,
  'Delivered'.tr,
  'Returned'.tr
];

enum SecurityTypes { none, pattern, password }
const String serverKey = 'AAAA7geJQx8:APA91bHisu4oivlkEdj0q7gu3a1muVnXThep1TkkXKy_LAe3qgev4vRq4_DaW3b6KfVG3bCu7LSfc3LH4MOB8O47OKxUCWNXM1x-f15xw82ms3dvoLFtLCNAVfmLaNG2eK2mxvzV7iEN';