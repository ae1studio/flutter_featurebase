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
        scaffoldBackgroundColor: Color.fromARGB(255, 20, 22, 31),
        cardColor: Color.fromARGB(255, 20, 22, 31),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
      body: Center(
        child: const Text(
          'Open the help center',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openKnowledgeBase(
            logo: SvgPicture.asset(
              'assets/logo.svg',
              height: 25,
              width: 25,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            knowledgeBaseUrl: 'https://help.featurebase.app',
            primaryColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            context: context,
          );
        },
        tooltip: 'Help',
        child: const Icon(Icons.support),
      ),
    );
  }
}
