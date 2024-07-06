


import 'package:flutter/material.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:shop_app/global_variables.dart';
import 'package:shop_app/home_page.dart';
import 'package:shop_app/product_details_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context) => CartProvider()),
       ],
       child: MaterialApp(
         title: 'Shopping App',
         theme: ThemeData(
           fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(254, 206, 1, 1),
                primary:  const Color.fromRGBO(254, 206, 1, 1),
            ),
           appBarTheme: const AppBarTheme(
             titleTextStyle: TextStyle(
               fontSize: 20,
               color: Colors.black,
             ),
           ) ,
           inputDecorationTheme: const InputDecorationTheme(
             hintStyle: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 16,
       
             ),
             prefixIconColor: Color.fromRGBO(119, 119,119, 1),
           ),
       
           textTheme: const TextTheme(
             titleLarge: TextStyle(
              fontWeight:  FontWeight.bold,
               fontSize: 35,
             ),
       
           titleMedium: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 22,
           ),
             bodySmall: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 16,
             )
       
           ),
           useMaterial3: true,
       
         ),
         home:  const HomePage(),
       ),
     );
   }
 }
 