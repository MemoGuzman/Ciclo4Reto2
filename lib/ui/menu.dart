import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fbog4-2.fna.fbcdn.net/v/t39.30808-6/290548259_10159541848785379_2222399815211200090_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFqlBumbGlNzDMBwtC7PqYDZAAkmUVntN5kACSZRWe03oKP6pDPQOyGZmsDcARbfjE&_nc_ohc=v77Z0t6_sIwAX9Jqra9&_nc_ht=scontent.fbog4-2.fna&oh=00_AfBaLPdmHtZlVv7CQefVHUMLZGATnM12Sv1ItCyDz5WzCg&oe=637A0F5D"),
                  ),
                  accountName: Text("JORGE GUZMAN FAJARDO"),
                  accountEmail: Text("afajardoj@uninorte.edu.co")),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text("Comprar"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("Mis Productos"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Acerca de..."),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
