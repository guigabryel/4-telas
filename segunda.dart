import 'package:flutter/material.dart';
import 'package:teste_1/primeira.dart';
import 'segunda.dart';
import 'terceira.dart';
import 'quarta.dart';


class Segunda extends StatelessWidget {
  const Segunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('RETRO RACE',
            style: TextStyle(
            color: Colors.white,
            ),
            ),
      ),

      drawer: Barra(),
      body: SingleChildScrollView(
        child: SizedBox(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Faça agora seu cadatro',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ), 
),
          Container(
              width: 500,
              height: 300,
          child:Image.network(
          'https://i.pinimg.com/564x/e7/13/a7/e713a7bc610f36965dabc44b9b80c238.jpg')),
          
            TextField(
              decoration: InputDecoration(
                labelText: 'Insira seu E-mail',
                border: OutlineInputBorder()
              ),
            ),
          
              
        
        SizedBox(height: 10,),
        
        TextField(
          decoration: InputDecoration(
            labelText: 'Insira seu CPF',
            border: OutlineInputBorder()
          ),
        ),
        
        SizedBox(height: 10,),
        
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Primeira(),
          ),
          );
        },         
        child: Text('Entrar'),),
      ], ),
        ),
),),
        );
  }
}

