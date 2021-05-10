import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          _createCard(size: size),
          _createCard(size: size),
        ],
      ),
    );
  }
}

class _createCard extends StatelessWidget {
  const _createCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Container(
            height: size.height * 0.40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                      width: size.width * 0.80,
                      height: size.height * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Container(
                        height: size.height * 0.40,
                        child: ClipRRect(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 8),
                                // TODO: cambiar título
                                child: Text(
                                  'Comida Rápida',
                                  style: TextStyle(fontSize: 26),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                width: size.width * 0.8,
                                child: Column(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 4),
                                      alignment: Alignment.centerLeft,
                                      //TODO: Cambiar descripcion
                                      child: Text(
                                        'Las hamburguesas de Pablo',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.70,
                                      height: 80,
                                      child: ListView(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 0),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Chip(
                                              // TODO: Cambiar titulo de lista horizontal tags
                                              label: Text('Comida',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              backgroundColor: Colors.black,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Chip(
                                              // TODO: Cambiar titulo de lista horizontal tags
                                              label: Text('Bebida',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              backgroundColor: Colors.black,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Chip(
                                              // TODO: Cambiar titulo de lista horizontal tags
                                              label: Text('Bebida',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              backgroundColor: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      //TODO: Cambiar titulo
                                      child: Text('Hamburguesa Simple'),
                                    ),
                                    Container(
                                      //TODO: Cambiar descripción
                                      child: Text(
                                        'Descripcion del Producto',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      width: size.width * 0.80,
                                      alignment: Alignment.centerRight,
                                      //TODO: Cambiar precio
                                      child: Text('\$4.99',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // subtitle:
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    width: 150,
                    height: 150,
                    left: size.width * 0.2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          //TODO: Cambiar imagen
                          child: Image.asset('assets/burger.png',
                              fit: BoxFit.cover),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
