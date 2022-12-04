import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'business_logic/controllers/language_controller.dart';
import '../services/deps.dart' as deps;

import 'firebase_options.dart';
import 'helper/app_routes.dart';
import 'helper/app_themes.dart';
import 'helper/global_constants.dart';
import 'services/messages.dart';
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message)async{
try{

}catch(e){
  debugPrint('exception $e');
}
}
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Map<String, Map<String, String>> languages =await deps.init();
  await GetStorage.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  await FirebaseMessaging.instance.getInitialMessage();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  runApp( RepairBooking(
    languages: languages,
  ));

}

class RepairBooking extends StatelessWidget {
  RepairBooking({Key? key,required this.languages}) : super(key: key);
  Map<String, Map<String, String>> languages;

  @override
  Widget build(BuildContext context) {

    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
          return GetMaterialApp(

            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            locale: localizationController.local,
            translations: Messages(languages:languages),
            fallbackLocale: Locale(LanguageConstants.languagesList[0].languageCode,
              LanguageConstants.languagesList[0].countryCode,
            ),
            initialRoute: splashScreen,
            getPages: appPages,
          );
        }
    );
  }
}
