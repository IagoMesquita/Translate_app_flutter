import 'package:flutter/material.dart';
import 'package:translate/presentation/components/custom_dropdown_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: Colors.blueGrey,
              child: Row(
                children: [
                  CustomDropdownMenu(),
                  Icon(Icons.arrow_forward, color: Colors.white),
                  CustomDropdownMenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
