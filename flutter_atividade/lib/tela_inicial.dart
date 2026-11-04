
import 'package:flutter/material.dart';
import 'segunda_tela.dart';

class TelaInicial extends StatelessWidget {
   TelaInicial({super.key});

  final nome = TextEditingController();
  final email = TextEditingController();

  // Método criado para abrir a próxima tela
  void abrirSegundaTela(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) 
        => SegundaTela(
          nome: nome.text,
          email: email.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tela Inicial",
          ),
      ),
      body: Padding(
        padding: 
        const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nome,
              decoration: 
              const InputDecoration(
                labelText: 
                "Digite seu nome",
              ),
            ),

            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: 
                "Digite seu email",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                abrirSegundaTela(
                  context);
              },
             child: const Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}
