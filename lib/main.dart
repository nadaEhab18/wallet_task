import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taxi_go_driver/Presentaion/history/views/history_view.dart';
import 'package:taxi_go_driver/Presentaion/screens/wallet/wallet_screen.dart';
import 'package:taxi_go_driver/generated/l10n.dart';

import 'Network/local/sharedprefrences.dart';
import 'Presentaion/Localization/Localizationcubit/localization_cubit.dart';
import 'Presentaion/Localization/Model/localizationmodel.dart';
import 'blocobserever.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init(); // Initialize SharedPreferences
  Bloc.observer = MyBlocObserver();

  // Set preferred orientations globally
  double width = WidgetsBinding.instance.window.physicalSize.width /
      WidgetsBinding.instance.window.devicePixelRatio;

  if (width < 500) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  } else {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocalizationCubit()
            ..appLanguage(LanguageEventEnums.initialLanguage),
        ),
      ],
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, langState) {
          Locale? locale;
          if (langState is ChangeLanguage) {
            locale = Locale(langState.languageCode!);
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const WalletScreen(),
            locale: locale,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
          );
        },
      ),
    );
  }
}

