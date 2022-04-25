import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:app/ui/widgets/button.dart';
import 'package:app/ui/widgets/icon_button.dart' as custom;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeChanger().themeLight,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(
              buttonText: 'Forsaet',
              icon: Icons.search,
            ),
            const SizedBox(
              height: 10,
            ),
            Button(
              buttonText: 'Forsaet',
              disabled: true,
              icon: Icons.search,
              borderColor: Theme.of(context).disabledColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Button(
              buttonText: 'Tilfoj August ',
              icon: Icons.add,
              mainColor: Theme.of(context).colorScheme.secondary,
              fontColor: Theme.of(context).colorScheme.onSecondary,
            ),
            const SizedBox(
              height: 10,
            ),
            Button(
              buttonText: 'Operat dig gratis ',
              mainColor: Theme.of(context).colorScheme.surface,
              fontColor: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                custom.IconButton(
                    icon: Icons.close,
                    mainColor: Theme.of(context).colorScheme.surface,
                    fontColor: Theme.of(context).colorScheme.onSurface,
                    borderColor: Theme.of(context).disabledColor),
                custom.IconButton(
                  disabled: true,
                  rounded: true,
                  icon: Icons.refresh,
                  borderColor: Theme.of(context).disabledColor,
                  mainColor: Theme.of(context).colorScheme.secondary,
                  fontColor: Theme.of(context).colorScheme.onSurface,
                ),
                custom.IconButton(
                  icon: Icons.favorite,
                  mainColor: Theme.of(context).colorScheme.secondary,
                  fontColor: Theme.of(context).colorScheme.onSecondary,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
