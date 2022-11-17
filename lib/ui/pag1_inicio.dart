import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
            image: NetworkImage(
                "https://media.gettyimages.com/id/1284316922/es/vector/tienda-de-mascotas-sobre-fondo-transparente.jpg?s=612x612&w=gi&k=20&c=9MsTKVrnBmcDZK0aKRf0Iv2lU4DTF6v-mgWfwAt6EYs=")),
      ),
    );
  }
}
