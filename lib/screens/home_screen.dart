import 'package:flutter/material.dart';
import 'notes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el estilo aquí, antes del return, para poder usarlo en los textos
    const TextStyle nombreEstilo = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color(0xFFF8BB00),
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00529E),
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO CIRCULAR
                Container(
                  width: 180, // Ajustado ligeramente para dar espacio a los nombres
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/logo_unison.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // TÍTULO
                const Text(
                  'Notas Unison',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF015294),
                  ),
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 15),

                // BLOQUE DE NOMBRES PAREJOS
                const Text('Jorge Luis Ruiz Muños',
                    style: nombreEstilo, textAlign: TextAlign.center),
                const SizedBox(height: 5),
                const Text('Carlos Guadalupe Grijalva Castillo',
                    style: nombreEstilo, textAlign: TextAlign.center),
                const SizedBox(height: 5),
                const Text('Isaac Moreno Gonzalez',
                    style: nombreEstilo, textAlign: TextAlign.center),
                const SizedBox(height: 5),
                const Text('Carlos Rene Quijada Ruiz Lopez',
                    style: nombreEstilo, textAlign: TextAlign.center),

                const SizedBox(height: 40),

                // BOTÓN COMENZAR
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotesScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF8BB00),
                    foregroundColor: const Color(0xFF015294),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Comenzar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}