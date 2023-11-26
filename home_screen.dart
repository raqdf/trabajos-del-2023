import 'package:flutter/material.dart';
import 'package:validacion/Widgets/formulario.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Cuenta...'),
        backgroundColor:
            Color.fromARGB(255, 47, 25, 248), // Cambia el color del AppBar aquí
      ),
      body: const FORMULRIO(),
    );
  }
}
