import 'package:flutter/material.dart';
import 'package:translate/domain/helpers/languages.dart';
import 'package:translate/presentation/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final languages = Languages.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 40, //Espaco entre os elementos da Column
            children: [
              FittedBox(
                // Nao tem na aula. Necessario para manter o padding e 15 sem overflow
                fit: BoxFit.contain,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ColoredBox(
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        CustomDropdownMenu(
                          languages: languages,
                          initialSelection: Languages.portuguese,
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white),
                        CustomDropdownMenu(
                          languages: languages,
                          initialSelection: Languages.english,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              TranslateBox(
                labelText: 'Escreva algo...',
                icons: [
                  Icon(Icons.volume_up),
                  Icon(Icons.copy),
                  Icon(Icons.delete),
                ],
              ),

              TranslateBox(
                labelText: 'Tradução',
                icons: [Icon(Icons.volume_up), Icon(Icons.copy)],
                isTextFild: false,
              ),
              FilledButton(style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueGrey)
              ),  onPressed: () {}, child: Text('Traduzir'),),
            ],
          ),
        ),
      ),
    );
  }
}
