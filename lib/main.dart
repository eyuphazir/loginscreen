import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                  child: SizedBox(
                    width: ekranGenisligi/4,
                      child: Image.asset("assets/images/giris.png")
                  ),
                ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(ekranYuksekligi/30),
                child: SizedBox(
                  width: ekranGenisligi/3,
                  height: ekranYuksekligi/20,
                  child: ElevatedButton(
                    child: Text("Giriş Yap",style: TextStyle(fontSize: ekranGenisligi/25),),
                    onPressed: (){
                      print("Giriş Yapıldı.");
                    },
                  ),
                ),
              ),
              Text("Şifremi Unuttum?",
                style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranGenisligi/30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
