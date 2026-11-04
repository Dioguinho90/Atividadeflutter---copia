import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  // Método responsável por voltar
  // para a tela anterior

  final String nome;
  // Variavel que recebe o email enviado
  final String email;

  const SegundaTela({
    super.key,
    required this.nome,
    required this.email,
  });

  // Metodo rsponsavel por voltar
  void voltarTela(
    BuildContext context) {
    // pop() fecha a tela atual
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        "Segunda Tela"
        ),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: 
          MainAxisAlignment.center,
          children: [
            //Mostra o nome recebido
            Text(
              "Nome: $nome",
              style: 
              const TextStyle(fontSize: 25),
            ),
            // Mostra o email recebido
            Text("Email: $email",
            style: 
            const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20 ),
            ElevatedButton(
              onPressed:() {
                voltarTela(context);
              },
               child: 
               const Text("Voltar"),
               
            ) 
          ],
        ),
      ),
    );
  }
}
