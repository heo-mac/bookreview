import 'package:bookreview/firebase_options.dart';
import 'package:bookreview/src/common/interceptors/custom_interceptor.dart';
import 'package:bookreview/src/common/repository/naver_api_repository.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //dase url - Naver api
  Dio dio = Dio(BaseOptions(baseUrl: "https://openapi.naver.com/"));
  dio.interceptors.add(CustomInterceptor()); // key checking
  runApp(MyApp(dio: dio));
}

class MyApp extends StatelessWidget {
  final Dio dio;
  const MyApp({super.key, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => NaverBookRepository(dio)),
        ],
        child: MultiBlocProvider(
          providers: [],
          child: App(),
        ));
  }
}
