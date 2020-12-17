
import 'package:e_doctor_last/models/user.dart';
import 'package:e_doctor_last/services/auth.dart';
import 'package:e_doctor_last/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


Future<void> main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Userid>.value(
      value: AuthService().user,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

