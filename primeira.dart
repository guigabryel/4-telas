import 'package:flutter/material.dart';
import 'segunda.dart';
import 'terceira.dart';
import 'quarta.dart';


class Primeira extends StatelessWidget {
  const Primeira({super.key});

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

      body:SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Column(          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [    
          
          
          Text('Seja bem-vindo a nossa loja!',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ), 
            ),
            Container(
              width: 500,
              height: 350,
              child: Image.network(
                'https://i.pinimg.com/564x/e7/13/a7/e713a7bc610f36965dabc44b9b80c238.jpg'),),

          Text('Qual sua preferência ?',
                style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ), 
            ),

            SizedBox(height: 10,),

                ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Primeira(),
                ),
                );
              },         
              child: Text('Hatch'),),

            SizedBox(height: 10,),

                ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Primeira(),
                ),
                );
              },         
              child: Text('SUV'),),

            SizedBox(height: 10,),

                ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Primeira(),
                ),
                );
              },         
              child: Text('Esportivo'),),

    //      SizedBox(height: 10,),

    //          ElevatedButton(onPressed: (){
    //          Navigator.of(context).pushReplacement(
    //            MaterialPageRoute(builder: (context) => Primeira(),
    //          ),
    //          );
    //        },         
    //        child: Text('Sedã'),),

          SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Primeira(),
              ),
              );
            },         
            child: Text('Picape'),)

              

          ] 
        ),
      ),
      ),      
    ),
  );
  }
}

class Barra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.home),
              title: Text('RETRO RACER'),
              subtitle: Text('MENU PRINCIPAL'),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Primeira()));
              },
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.account_box),
              title: Text('FAÇA SEU CADRASTRO'),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Segunda()));
              },
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.car_crash_outlined),
              title: Text('AGENDE SEU TEST DRIVE'),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Terceira()));
              },
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.star),
              title: Text('AVALIE NOSSO ATENDIMENTO'),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Quarta()));
              },
            ),
          ],
        ),
      ),
  );
  }
}