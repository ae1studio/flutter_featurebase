import 'package:featurebase/l10n/generated/featurebase_localizations.dart';
import 'package:flutter/material.dart';
import 'package:featurebase/featurebase.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Featurebase Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 80, 72, 230),
          primary: Color.fromARGB(255, 80, 72, 230),
        ),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 80, 72, 230),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 14, 16, 21),
        cardColor: Color.fromARGB(255, 16, 18, 23),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color.fromARGB(255, 21, 23, 30),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(),
      locale: Locale('en'),
      localizationsDelegates: [
        FeaturebaseLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Featurebase Demo'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.support,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Help Center',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: () {
              openHelpCenter(
                logo: SvgPicture.asset(
                  'assets/logo.svg',
                  height: 25,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                helpCenterUrl: 'https://help.featurebase.app',
                primaryColor: Theme.of(context).primaryColor,
                textColor: Colors.white,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                defaultLocale: Locale('en'),
                context: context,
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.history_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Changelog',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
            onTap: () {
              openChangelog(
                logo: SvgPicture.asset(
                  'assets/logo.svg',
                  height: 25,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                feedbackUrl: 'https://feedback.featurebase.app',
                appName: 'Featurebase',
                primaryColor: Theme.of(context).primaryColor,
                textColor: Colors.white,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                defaultLocale: Locale('en'),
                context: context,
              );
            },
          ),
        ],
      ),
    );
  }
}
