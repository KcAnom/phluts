import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phluts/phluts.dart';
import 'package:phluts_playground/app/cubit/home_cubit.dart';
import 'package:phluts_playground/app/embed/embed_screen_stub.dart'
    if (dart.library.js_interop) 'package:phluts_playground/app/embed/embed_screen.dart';
import 'package:phluts_playground/app/home_screen.dart';
import 'package:phluts_playground/theme/app_theme.dart';
import 'package:phluts_webview/phluts_webview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // webView lives in the phluts_webview plugin rather than core, so it needs
  // registering explicitly. webview_flutter has no web implementation, and the
  // widget builds its controller in initState — outside the framework's
  // try/catch — so registering it on web would render a Flutter error box.
  // Leaving it unregistered there lets Phluts log an unsupported-type warning
  // and degrade quietly instead.
  await Phluts.initialize(
    parsers: [if (!kIsWeb) const PhlutsWebViewParser()],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialRoute = Uri.base.path;

    return MaterialApp(
      title: 'Phluts Playground',
      theme: AppTheme.darkTheme,
      initialRoute: initialRoute,
      routes: {
        '/': (_) => BlocProvider(
              create: (_) => HomeCubit(),
              child: const HomeScreen(),
            ),
        '/embed': (_) => const EmbedScreen(),
      },
    );
  }
}
