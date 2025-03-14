import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu), // Ícono del menú
            color: Colors.yellow, // Cambiar color para resaltar
            onPressed: () {
              // Acción al presionar el ícono del menú
            },
          ),
          title: Text(
            'Refaccionaria \nSaul Jimenez 1222',
            textAlign: TextAlign.center, // Centrar texto en múltiples líneas
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple, // Color de fondo
          elevation: 6, // Sombra
          centerTitle: true, // Centrar el título
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ProveedoresList(),
        ),
      ),
    );
  }
}

class ProveedoresList extends StatelessWidget {
  final List<Map<String, dynamic>> datosProveedores = [
    {
      "nombre": "Neymar 10",
      "cantidad": 50,
      "material_provehe": "Acero",
      "direccion": "Calle 123, Ciudad A",
      "imagen":
          "https://raw.githubusercontent.com/sauljimenez24/examenfinal/refs/heads/main/ney.jpg"
    },
    {
      "nombre": "Karely",
      "cantidad": 30,
      "material_provehe": "Plástico",
      "direccion": "Avenida 456, Ciudad B",
      "imagen":
          "https://raw.githubusercontent.com/sauljimenez24/examenfinal/refs/heads/main/kar.jpg"
    },
    {
      "nombre": "Mya",
      "cantidad": 70,
      "material_provehe": "Madera",
      "direccion": "Carrera 789, Ciudad C",
      "imagen":
          "https://raw.githubusercontent.com/sauljimenez24/examenfinal/refs/heads/main/mia.jpg"
    },
    {
      "nombre": "Lopez",
      "cantidad": 40,
      "material_provehe": "Vidrio",
      "direccion": "Paseo 321, Ciudad D",
      "imagen":
          "https://raw.githubusercontent.com/sauljimenez24/examenfinal/refs/heads/main/lopez.jpg"
    },
    {
      "nombre": "Bellinham",
      "cantidad": 40,
      "material_provehe": "Vidrio",
      "direccion": "Paseo 321, Ciudad D",
      "imagen":
          "https://raw.githubusercontent.com/sauljimenez24/examenfinal/refs/heads/main/beli.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: datosProveedores.map((proveedor) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo.shade900.withOpacity(0.7),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(proveedor["imagen"]),
              ),
              title: Text(
                proveedor["nombre"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cantidad: ${proveedor["cantidad"]}",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Material: ${proveedor["material_provehe"]}",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Dirección: ${proveedor["direccion"]}",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        );
      }).toList(),
    );
  }
}
