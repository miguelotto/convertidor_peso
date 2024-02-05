import 'package:flutter/material.dart';
import 'funciones.dart';
import 'comprobacion.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  String v1 = "";
  String v2 = "";
  List<String> items = [
    "",
    "Kilogramos",
    "Libras",
    "Onzas",
    "Gramos",
    "Miligramos",
    "Quilates"
  ];

  TextEditingController _valortext = TextEditingController();

  TextEditingController _valortext2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: const Text(
              "Convertidor de peso",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors
                .white, //hay que colocar elcolor aqui porque sino da error
          ),
          width: 350,
          height: 550,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Coloque el valor a convertir",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, left: 20),
                      child: DropdownButton(
                        value:
                            v1, //con esto es que haremos que el valor al seleccionar pues sea el que se selecciono
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            child: Text(items),
                            value: items,
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            v1 = newvalue!;
                          });
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50, right: 20),
                        child: TextField(
                          textDirection:
                              TextDirection.rtl, //escribe de derecha a
                          //izquierda
                          decoration: InputDecoration(),
                          controller: _valortext,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120, left: 20),
                      child: DropdownButton(
                        value: v2,
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            child: Text(items),
                            value: items,
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            v2 = newvalue!;
                          });
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100, right: 20),
                        child: TextField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(),
                          controller: _valortext2,
                          readOnly:
                              true, //hacer que el textbox sea de solo lectura
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              double n1 = double.tryParse(_valortext.text) ?? 0;
                              comprobar(v1, v2, n1, _valortext2, items);
                            });
                          },
                          child: Text(
                            "Calcular",
                            style: TextStyle(fontFamily: "Roboto"),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue[400]),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
