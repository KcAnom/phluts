import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/default_phluts_options.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';
import 'package:phluts/phluts.dart';

final token =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YzNjN2I1OGQ5NjU5NzUwMmNjODAxNWRkZjNjNTY1MyIsIm5iZiI6MTc0NDY1NDUzNi4zMjgsInN1YiI6IjY3ZmQ1MGM4N2MyOWFlNWJjM2Q5NjEzNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oZWfMnM-eiPjHvlvjLbrZeQXCfm2lvgGiNx8xDovzW8";

void main() async {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options);
      },
    ),
  );

  await Phluts.initialize(
    options: defaultPhlutsOptions,
    dio: dio,
    parsers: [MovieCarouselParser()],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PhlutsApp(
      title: 'Flutter Demo',
      theme: PhlutsAppTheme(name: "movie_app_dark"),
      homeBuilder: (_) {
        return Phluts(routeName: 'onboarding_screen');
      },
    );
  }
}
