import 'dart:async';
import 'package:flutter/material.dart';
import 'package:postest7_123_zulfikarrm/alert.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return landingpage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "lbh.jpg",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'postest7_123_zulfikarrm',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const landingpage(),
    );
  }
}

class landingpage extends StatelessWidget {
  const landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "postest7_123_zulfikarrm",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.black
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(100, 0, 30, 70),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("tv.jpg"),
                  ),
                ),
              ),
              Text(
                "Smart TV",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Smart TV dengan fitur impian",
                textAlign: TextAlign.left,
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 35, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("kulkas.png"),
                  ),
                ),
              ),
              Text(
                "Kulkas 2 pintu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Kulkas dengan dingin terbaik",
                textAlign: TextAlign.left,
              ),
              Container(
                width: 190,
                height: 240,
                margin: EdgeInsets.only(top: 35, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("ac.png"),
                  ),
                ),
              ),
              Text(
                "Air conditioner",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Dapat mendinginkan ruangan dalam 30 detik",
                textAlign: TextAlign.left,
              ),
              Button()
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();
    return Container(
      width: 270,
      height: 50,
      margin: EdgeInsets.only(top: 40, bottom: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text('Beli'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => mainpage(),
              )
              
              );
        },
      )
    );
  }
}

class mainpage extends StatefulWidget {
  const mainpage({ Key? key }) : super(key: key);

  @override
  State<mainpage> createState() => _mainpage();
}

class _mainpage extends State<mainpage> {
  int _index=3;
Widget tabBarBody() {
  return TabBarView(
    children: [
      Icon(Icons.chat),
      Icon(Icons.photo),
      Icon(Icons.phone),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('postest7_123_zulfikarrm'),
          backgroundColor: Colors.grey,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu')
                ),
                ListTile(
                  title: Text('Form'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => form(),
                        )
                      );
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}

class hal2 extends StatelessWidget {
  const hal2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman 2'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('kembali ke halaman 1'),
        ),
      ),
    );
  }
}

    class form extends StatefulWidget {
      @override
      _form createState() => _form();
    }
    
    class _form extends State<form> {
      
      final _formKey = GlobalKey<FormState>();
    
      final name = TextEditingController();
      final jenis = TextEditingController();
      final harga = TextEditingController();
      bool? garansi = false;
    
      @override
      Widget build(BuildContext context) {
        TextEditingController _myController = TextEditingController();

        SnackBar mySnackBar(String text) {
      return SnackBar(
        content: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        duration: Duration(seconds: 7),
        backgroundColor: Colors.amber,
        padding: EdgeInsets.all(15),
      );
    }

        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("Postest 7 Zulfikar"),
          ),

          body: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Ketik nama barang",
                      labelText: "Nama Barang",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama barang tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: jenis,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: 'Jenis',
                        hintText: 'Jenis apa'
                    ),
                     validator: (value) {
                      if (value!.isEmpty) {
                        return 'Jenis tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: harga,
                    decoration: InputDecoration(
                      hintText: "Masukkan Harga Barang",
                      labelText: "Harga Barang",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Harga barang tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  Checkbox(
                    value: garansi,
                    onChanged: (bool? value){
                      setState(() {
                        garansi = value;
                      });
                    },
                  ),
                  Text('Garansi'),
                  ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        CustomAlert(context, _myController.text);
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (_) => DetailPage(name: name.text, jenis: jenis.text, harga: harga.text)
                          )
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }
    }

        class DetailPage extends StatelessWidget {
        
          DetailPage({required this.name, required this.jenis, required this.harga});
        
          String name;
          String jenis;
          String harga;
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Halaman Output"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name), 
                    Text(jenis),
                    Text(harga)
                  ],
                )
              ),
            );
          }
        }