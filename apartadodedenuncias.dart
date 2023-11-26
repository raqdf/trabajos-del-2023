import 'package:flutter/material.dart';

class ApartadoDeDenuncias extends StatefulWidget {
  @override
  _ApartadoDeDenunciasState createState() => _ApartadoDeDenunciasState();
}

//_DenunciaScreenState
class _ApartadoDeDenunciasState extends State<ApartadoDeDenuncias> {
  TextEditingController deController = TextEditingController();
  TextEditingController paraController = TextEditingController();
  TextEditingController asuntoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Denuncias"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("De:"),
            subtitle: TextField(
              controller: deController,
              decoration: InputDecoration(
                hintText: "Tu nombre o identificación",
              ),
            ),
          ),
          ListTile(
            title: Text("Para:"),
            subtitle: TextField(
              controller: paraController,
              decoration: InputDecoration(
                hintText: "Nombre o entidad a la que se dirige la denuncia",
              ),
            ),
          ),
          ListTile(
            title: Text("Asunto:"),
            subtitle: TextField(
              controller: asuntoController,
              decoration: InputDecoration(
                hintText: "Breve descripción del asunto",
              ),
            ),
          ),
          SizedBox(height: 16), // Agrega espacio entre los elementos
          ElevatedButton(
            onPressed: () {
              // Obtiene los valores de los campos
              String de = deController.text;
              String para = paraController.text;
              String asunto = asuntoController.text;

              // Verifica si los campos obligatorios están vacíos
              if (de.isEmpty || para.isEmpty || asunto.isEmpty) {
                // Muestra un mensaje de error si algún campo está vacío
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Rellene los espacios obligatorios'),
                  ),
                );
              } else {
                // Realiza las acciones necesarias para enviar la denuncia
                // Por ejemplo, puedes mostrar un mensaje de éxito o realizar una solicitud de envío de denuncia.

                // Limpiar los campos después de enviar la denuncia
                deController.clear();
                paraController.clear();
                asuntoController.clear();

                // Muestra una notificación de éxito
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Denuncia enviada satisfactoriamente'),
                  ),
                );
              }
            },
            child: Text("Enviar"),
          ),
        ],
      ),
    );
  }
}
