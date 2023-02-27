import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Module 6, D2, Task 1'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20,),
              const Text("txt_welcome", style: TextStyle(fontSize: 22),).tr(),

            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: (){
                      context.setLocale(const Locale('en','US'));
                    },
                    child: const Text("English"),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: (){
                      context.setLocale(const Locale('ru','RU'));
                    },
                    child: const Text("Russian"),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: (){
                      context.setLocale(const Locale('uz','UZ'));
                    },
                    child: const Text("Uzbek"),
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      context.setLocale(const Locale('fr','FRA'));
                    },
                    child: const Text("French"),
                  ),
                ),
              ],
            )

            ]

        ),
        ),
    );
  }
}
