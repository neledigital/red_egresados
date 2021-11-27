import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class PublicOffersScreen extends StatefulWidget {
  // PublicOffersScreen empty constructor
  const PublicOffersScreen({Key? key}) : super(key: key);

  // Completa el código con las lineamientos del instructor
  // ---------------------------------------
  // 1. Crea los estados del widget usando createState()
  // ---------------------------------------
  @override
  _State createState() => _State();
}

// ---------------------------------------
// 2. Define el estado del Widget
// ---------------------------------------
class _State extends State<PublicOffersScreen> {
  // ---------------------------------------
  // 3. Genera la lista de datos que se mostrarán en cada card/tarjeta
  // ---------------------------------------
  final items = List<String>.generate(20, (i) => "item $i");
  // 4. Define la estructura del widget utilizando el metodo Build
  // ---------------------------------------
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return OfferCard(
            title: 'Desarrollador backend de Flutter',
            content:
                'Estamos buscando un desarrollador freelance de fluter para trabajar con mision tic',
            arch: 'Flutter',
            level: 'Experto',
            payment: 3500000,
            onCopy: () => [],
            onApply: () => [],
          );
        });
  }
}
