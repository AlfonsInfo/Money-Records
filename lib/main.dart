import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_records/config/app_color.dart';
import 'package:money_records/data/model/users.dart';
import 'config/session.dart';
import 'package:intl/date_symbol_data_local.dart';

//Page
import 'presentation/page/home_page.dart';
import 'presentation/page/auth/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID').then((value){
  runApp(const MainApp());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //* Theme Setup
      theme: ThemeData.light().copyWith(
        primaryColor: AppColor.primary,
        colorScheme: const ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white
        )
      ),
      home: FutureBuilder(
        future: Session.getUser(),
        builder: (context, AsyncSnapshot<Users> snapshot) {
          if(snapshot.data!=null && snapshot.data!.idUser !=null)
          {
            return const HomePage();
          }
          return const LoginPage();
        },
      ),
    );
}

}
