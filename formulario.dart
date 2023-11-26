import 'package:flutter/material.dart';

class FORMULRIO extends StatefulWidget {
  const FORMULRIO({super.key});

  @override
  State<FORMULRIO> createState() => _FORMULRIOState();
}

class _FORMULRIOState extends State<FORMULRIO> {
  final GlobalKey<FormState> _Formularioestado = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(
          255, 63, 12, 248), // Establece el color de fondo de la pantalla aquí
      child: Form(
        key: _Formularioestado,
        child: Column(
          children: [
            //container de correo
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                        255, 248, 248, 248), // Cambia el color de fondo aquí
                    border: Border.all(
                        color: const Color.fromARGB(255, 11, 12,
                            12))), //aqui se cambia el color de los bordes
                child: TextFormField(
                  validator: (value) {
                    //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                    if (!value!.contains("@")) {
                      return "El correo no es valido";
                    }

                    return null; //todo salio bien
                  },
                  decoration: InputDecoration(
                      hintText: "correo", border: InputBorder.none),
                )),
//------------------------------------------------------------------------------------------------------------------------------
            //container de contraseña
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                        255, 245, 244, 244), // Cambia el color de fondo aquí
                    border: Border.all(
                        color: const Color.fromARGB(255, 8, 8,
                            8))), //aqui se cambia el color de los bordes
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                    if (value!.length < 6) {
                      return "La contraseña al menos debe tener 6 caracteres";
                    }

                    return null; //todo salio bien
                  },
                  decoration: InputDecoration(
                      hintText: "contraseña", border: InputBorder.none),
                )),
            //---------------------------------------------------------------------------------------------------------------------
            // Container de nombre completo
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                    255, 247, 245, 245), // Cambia el color de fondo aquí
                border: Border.all(
                    color: const Color.fromARGB(255, 12, 12,
                        12)), //aqui se cambia el color de los bordes
              ),
              child: TextFormField(
                validator: (value) {
                  //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                  if (value == null || value.isEmpty) {
                    return "Rellene el Campo Obligatorio";
                  }
                  return null; // Todo salió bien
                },
                decoration: InputDecoration(
                  hintText: "Nombre Completo",
                  border: InputBorder.none,
                ),
              ),
            ),
            //--------------------------------------------------------------------------------------------------------------------------
            // Container de teléfono
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                    255, 250, 249, 249), // Cambia el color de fondo aquí
                border: Border.all(
                    color: const Color.fromARGB(
                        255, 2, 2, 2)), //aqui se cambia el color de los bordes
              ),
              child: TextFormField(
                validator: (value) {
                  //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                  if (value == null || value.isEmpty) {
                    return "Rellene el Campo Obligatorio";
                  }
                  // Puedes agregar validaciones adicionales para el teléfono aquí
                  return null; // Todo salió bien
                },
                decoration: InputDecoration(
                  hintText: "Teléfono",
                  border: InputBorder.none,
                ),
              ),
            ),
//--------------------------------------------------------------------------------------------------------------------------------------
            // Container de ubicación
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                    255, 252, 251, 251), // Cambia el color de fondo aquí
                border: Border.all(
                    color: const Color.fromARGB(
                        255, 7, 7, 7)), //aqui se cambia el color de los bordes
              ),
              child: TextFormField(
                validator: (value) {
                  //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                  if (value == null || value.isEmpty) {
                    return "Rellene el Campo Obligatorio";
                  }
                  // Puedes agregar validaciones adicionales para la ubicación aquí
                  return null; // Todo salió bien
                },
                decoration: InputDecoration(
                  hintText: "Ubicación",
                  border: InputBorder.none,
                ),
              ),
            ),
//---------------------------------------------------------------------------------------------------------------------------------
            // Container de cédula
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(
                    255, 248, 247, 247), // Cambia el color de fondo aquí
                border: Border.all(
                    color: const Color.fromARGB(
                        255, 5, 5, 5)), //aqui se cambia el color de los bordes
              ),
              child: TextFormField(
                validator: (value) {
                  //esto es un validador que se utiliza para que los campos no esten sin la info correspondiente
                  if (value == null || value.isEmpty) {
                    return "Rellene el Campo Obligatorio";
                  }
                  // Puedes agregar validaciones adicionales para la cédula aquí
                  return null; // Todo salió bien
                },
                decoration: InputDecoration(
                  hintText: "Cédula",
                  border: InputBorder.none,
                ),
              ),
            ),
//----------------------------------------------------------------------------------------------------------------------------
            Expanded(child: Container()),
            Container(
                width: 150, // Establece el ancho deseado del botón
                //width: double.infinity,//este teda un ancho adaptable interactivo
                child: ElevatedButton(
                  onPressed: () {
                    if (_Formularioestado.currentState!.validate()) {
                      // Realizamos el resto del proceso
                      print("Todo bien");
                    } else {
                      print("Hay errores");
                    }
                  },
                  //boton de crear cuenta
                  child: Text(
                    "Crear ",
                    style: TextStyle(
                      color: const Color.fromARGB(
                          255, 7, 7, 7), // Cambia el color del texto aquí
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 129, 129,
                          129), // Aquí puedes definir tu color personalizado utilizando un valor hexadecimal

                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical:
                              20)), // Puedes ajustar el tamaño del botón aquí
                )),
          ],
        ),
      ),
    );
  }
}
