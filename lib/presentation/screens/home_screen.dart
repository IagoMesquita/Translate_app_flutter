import 'package:flutter/material.dart';
import 'package:translate/presentation/components/custom_dropdown_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FittedBox( //Nao tinha na aula, precisei implementar para manter o padding 15
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ColoredBox(
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        CustomDropdownMenu(
                          languages: ["Portugues", "English"],
                          initialSelection: "Portugues",
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white),
                        CustomDropdownMenu(
                          languages: ["Portugues", "English"],
                          initialSelection: "English",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
