import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class FindPatientPage extends StatefulWidget {
  const FindPatientPage({super.key});

  @override
  State<FindPatientPage> createState() => _FindPatientPageState();
}

class _FindPatientPageState extends State<FindPatientPage> {
  final formKey = GlobalKey<FormState>();
  final documentEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LabClinicasAppbar(
        actions: [
          PopupMenuButton<int>(
            child: IconPopupMenuWidget(),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Reiniciar Processo'),
                ),
              ];
            },
            onSelected: (value) async {},
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (_, constrains) {
          var sizeOf = MediaQuery.sizeOf(context);
          return SingleChildScrollView(
            child: Container(
                constraints: BoxConstraints(minHeight: constrains.maxHeight),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background_login.png'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    width: sizeOf.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Image.asset('assets/images/logo_vertical.png'),
                          SizedBox(
                            height: 48,
                          ),
                          TextFormField(
                            controller: documentEC,
                            validator:
                                Validatorless.required('CPF obrigatório'),
                            decoration: const InputDecoration(
                              label: Text(
                                'Digite seu CPF',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Text('Não sabe o CPF do paciente',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: LabClinicasTheme.blueColor)),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Clique aqui',
                                    style: TextStyle(
                                      color: LabClinicasTheme.orageColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: sizeOf.width * 0.8,
                            height: 48,
                            child: ElevatedButton(
                                onPressed: () {
                                  final valid =
                                      formKey.currentState?.validate() ?? false;
                                },
                                child: Text('CONTINUAR')),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
