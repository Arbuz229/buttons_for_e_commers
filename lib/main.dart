import 'package:flutter/material.dart';
import 'package:lesson_1/shared/ui/icon_button_next_previous.dart';
import 'package:lesson_1/shared/ui/input.dart';
import 'shared/ui/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Input(labelText: "Password", isPassword: true,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Button(label: "Hello word", onPressed: (){}, 
                  variant: ButtonStyleVariant.secondary, size: const Size(350, 50)),
              ),
              Button(label: "second button", onPressed: (){}, size: const Size(350, 50)),
              CircleButton(
                variant: CircleButtonVariant.back,
                onPressed: (){},
              ),   
              CircleButton(
                variant: CircleButtonVariant.forward,
                onPressed: (){},
              )
            ],
        ),),
      ),
    );
  }
}


