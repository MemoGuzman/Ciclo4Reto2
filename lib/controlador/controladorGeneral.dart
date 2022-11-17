import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Arnés Para Perro Quick Fit Negro Ezydog",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/5708214202061_2048x2048.jpg?v=1642700469",
        0,
        200000));
    pro.add(productos(
        2,
        "Comedero Doble Am Mascotas Bicolor Mediano",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/PUPPIS-12AGO-2092-7707347581553-1_2048x2048.jpg?v=1640036947",
        0,
        27000));
    pro.add(productos(
        3,
        "Correa Para Perro Ezydog Road Runner Zero Shock Rojo - 2 Mt",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/2226057_2048x2048.png?v=1642701989",
        0,
        150000));
    pro.add(productos(
        4,
        "Collar Para Perro Ezydog Neo Classic Azul",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/05_neo_collar_blue_lr_grande_d7032518-1fca-4d9c-b3aa-24c5e6bf52fe_2048x2048.jpg?v=1642546688",
        0,
        75000));
    pro.add(productos(
        5,
        "Pack Alimento Húmedo Para Perro Wow Can Surtido - 12 Un",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/Wow-can-surtido-x-12_2048x2048.png?v=1643661054",
        0,
        50000));
    pro.add(productos(
        6,
        "Comedero Dosificador Para Mascota Am Mascotas 22.5x16x27.5 Cm",
        "https://cdn.shopify.com/s/files/1/0568/1564/8961/products/comederodosificador_2048x2048.png?v=1639607938",
        0,
        35000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
