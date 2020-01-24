import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheelchair_shop/core/models/user.dart';
import 'package:wheelchair_shop/core/services/auth_service.dart';
import 'package:wheelchair_shop/core/view_models/root_view.dart';
import 'package:wheelchair_shop/locator.dart';

void main(){
  //  call setupLocator before we run the app
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) => locator<AuthService>().getStreamController().stream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wheelchair Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootView(),
      ),
    );
  }
}
