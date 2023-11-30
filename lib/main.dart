import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 72,
              color: const Color.fromRGBO(18, 18, 18, 1),
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  SizedBox(height: 16.0),
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 16.0),
                  Icon(
                    Icons.inventory,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 16.0),
                  Icon(
                    Icons.shopify,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: const Color.fromRGBO(88, 101, 220, 1),
                    height: 80,
                    child: const Row(children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Clientes',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Admin',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text(
                              'Empresa',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(48.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(11.0),
                      elevation: 5,
                      child: Container(
                          width: size.width * 0.8,
                          height: size.height * 0.8,
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                padding: const EdgeInsets.all(16.0),
                                child: Row(children: [
                                  Container(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.search),
                                          hintText:
                                              'Pesquisar por nome de cliente',
                                          contentPadding:
                                              const EdgeInsets.all(16.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0))),
                                    ),
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                                  Color.fromRGBO(
                                                      88, 199, 220, 1)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0)))),
                                      onPressed: () {},
                                      child: Container(
                                        padding: const EdgeInsets.all(8.0),
                                        child: const Row(
                                          children: [
                                            Text(
                                              'Cadastrar Cliente',
                                              style: TextStyle(fontSize: 20.0),
                                            ),
                                            SizedBox(width: 16.0),
                                            Icon(Icons.add_circle_outline)
                                          ],
                                        ),
                                      ))
                                ]),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
