import 'package:flutter/material.dart';
import 'package:teste_1/primeira.dart';

class Terceira extends StatelessWidget {
  const Terceira({super.key});

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
          width:  MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Agende agora seu Test-Drive',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
                ), 
              ),
              Container(
                width: 500,
                height: 300,
                child: Image.network(
                  'https://i.pinimg.com/564x/e7/13/a7/e713a7bc610f36965dabc44b9b80c238.jpg'),),
              
              TextField(
                decoration: InputDecoration(
                  labelText: 'Insira o dia e o mês que você deseja.',
                  border: OutlineInputBorder(),),
              ),     
                            SizedBox(height: 20,),
        
                ElevatedButton(onPressed: (){

              }, child: Text('Enviar')),

              SizedBox(height: 20,),
              Text('Iremos validar e entre 15 dias entraremos em contato com você.',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                ), 
              ),
              SizedBox(height: 20,),
              Text('Agradecemos a preferência.',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                ), 
              ),
            ],
          ),
        ),
        ),
      ),

    );
  }
}