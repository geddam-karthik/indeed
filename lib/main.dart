import 'package:flutter/material.dart';
import 'package:indeed_app/text_form_module/text_form.dart';

main(){
  runApp(IndeedApp());
}


class IndeedApp extends StatefulWidget {
  const IndeedApp({super.key});

  @override
  State<IndeedApp> createState() => _IndeedAppState();
}

class _IndeedAppState extends State<IndeedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:TextForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}

