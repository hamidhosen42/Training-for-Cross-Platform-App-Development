import 'package:flutter/material.dart';

class Hamid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.yellow,
      body: Center(
        child: Card(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blueAccent,
                height: 500,
                width: 300,
                child: Column(
                  children: [
                    CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage("https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/211690296_107459971597652_7471043327558640483_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeERdurwhc09ATSj3IM8TyhpIeyg_j6eiRwh7KD-Pp6JHDtDEj2y77SN84Egjb5bSqq5RDYbdxHbvLJMBK54tKRp&_nc_ohc=N8dliHLadu8AX85CrvN&tn=Kbby8p2xZOTga6-E&_nc_ht=scontent.fcgp3-1.fna&oh=3da5b457a10c7860cdf23f7d4952a2ba&oe=616B4410"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Food is any substance normally eaten or drunk by living things. The term food also includes liquid drinks. Food is the main source of energy and of nutrition for animals, and is usually of animal or plant origin. There are 4 (four) basic food energy sources: fats, proteins, carbohydrates and alchol.",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily:"Galada",
                  ),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      );
  }
}
