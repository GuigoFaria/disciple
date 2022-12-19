import 'package:flutter/material.dart';

class FormTask extends StatefulWidget {
  const FormTask({Key? key}) : super(key: key);

  @override
  _FormTaskState createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  final _formKey = GlobalKey<FormState>();
  final taskNameController = TextEditingController();
  final priorityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Adicionar hábito'),
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                width: 375,
                height: 650,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Preencha o hábito';
                            }
                            return null;
                          },
                          textAlign: TextAlign.center,
                          controller: taskNameController,
                          decoration: InputDecoration(
                            hintText: 'Hábito',
                            border: OutlineInputBorder(),
                            fillColor: Colors.black12,
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.parse(value) > 5 ||
                                int.parse(value) < 1) {
                              return 'Digite um valor entre 1 e 5';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          controller: priorityController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Prioridade',
                            border: OutlineInputBorder(),
                            fillColor: Colors.black12,
                            filled: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(48.0),
                        child: ElevatedButton(
                            onPressed: () => {
                                  if (_formKey.currentState!.validate())
                                    {
                                      print(taskNameController.text),
                                      print(priorityController.text),
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('Salvando novo hábito'),
                                        ),
                                      ),
                                    }
                                },
                            child: Text('Cadastrar hábito')),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
