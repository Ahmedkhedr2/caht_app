import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/screens/Chat_screen.dart';
import 'package:chatapp/screens/Cubits/login_cubit/login_cubit.dart';
import 'package:chatapp/screens/Login_Screen.dart';
import 'package:chatapp/screens/register_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          registerScreen.id: (context) => registerScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
