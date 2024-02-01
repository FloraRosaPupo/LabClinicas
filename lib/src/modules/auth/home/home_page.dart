import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: LabClinicasAppbar(actions: [
        PopupMenuButton<int>(
            child: IconPopupMenuWidget(),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Iniciar Terminal'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Finalizar Terminal'),
                ),
              ];
            })
      ]),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 112),
          width: sizeOf.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: LabClinicasTheme.orageColor)),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Bem Vindo',
                  style: LabClinicasTheme.titleStyle,
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: sizeOf.width * 0.8,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/self-service');
                    },
                    child: Text('INICIAR TERMINAL'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
