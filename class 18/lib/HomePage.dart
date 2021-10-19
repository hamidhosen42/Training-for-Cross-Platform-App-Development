import 'package:flutter/material.dart';
import 'package:flutter_application_2/hamid.dart';

class HomePage extends StatelessWidget {
  var img = [
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/233106090_126738199669829_5468373194005557841_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHH9l7gHK1OfIIbsXP7hHTb8xl_xL1uVRPzGX_EvW5VEyMFiy9ua8v_RwMX7-O_NDBtHFOd9aZIAGrRt46Bc8i4&_nc_ohc=vLT-SE-TbTIAX9nUbGZ&_nc_ht=scontent.fcgp3-1.fna&oh=dea560e8ef6183df29304b46807446ba&oe=6169CF8D",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/240460178_131298292547153_2686299885776680294_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGW7E0cVovkoKaWSQiN675laNeZfpp57q1o15l-mnnurbpvJA5sC2vWvDZI8RNJYagRqN21QS_tIPCWIBQc4mO4&_nc_ohc=UVBnvUnEM_AAX861d5c&_nc_ht=scontent.fcgp3-1.fna&oh=117144b2b4037164faf9183e76cc611b&oe=616B30D2",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/223472644_121688373508145_3344524628712401507_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGKysLMZQOvRY7kTmPvp9XJlP1HoGjBGn6U_UegaMEafteJgPQRdIhmGRmsHPhhG1nzF_VXwpFKeEL1RrC32CUv&_nc_ohc=jczim3fqJxUAX89_IaZ&_nc_ht=scontent.fcgp3-1.fna&oh=0e8222c19a2354f9bb17d9d48cc128c6&oe=6169C211",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/219879978_118581127152203_783873834535195279_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFYUKrYs-ZW4prSN-2mRFuhQE_vdEvbJGlAT-90S9skaYACRdy7xH-cAzI4yr0ACYYZHwaeAPSUURu4Ruo4UyL7&_nc_ohc=mVbl3Fw_dzUAX8nDQER&_nc_ht=scontent.fcgp3-1.fna&oh=471ab57aab85e74a74b254f382f58dac&oe=616A67C8",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/216770840_113990850944564_2060972739029887750_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeEP9reG5FgvYlUczQkmZ6ymHGjLbo8t4v8caMtujy3i_-cNQxCVD8Bv3JYBrw5aZqs990H5BxhLrMXSaZRLkCbY&_nc_ohc=tym41Mrj6kQAX-JZkmk&_nc_ht=scontent.fcgp3-1.fna&oh=a8cee11b44e27f446d84c6e60fb76d9f&oe=6169704A",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/216138066_113990504277932_7248488749197187325_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFj06iBoSuE5-00p-FdjuhQevI6YtNnmSx68jpi02eZLLcYlvRFmwB_tqmWHA0wmqOjNQRSdxO8rLT3qgQ-OsxR&_nc_ohc=jm8ppmZVzOUAX8NBBv9&_nc_ht=scontent.fcgp3-1.fna&oh=8193a7e790fd2376060db63f6d3b37fb&oe=616AE4AF",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/215719034_113986254278357_7026879093971310225_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHY91F191sFzCZudzWWTSNVG35kvBMPamkbfmS8Ew9qabSIy0PAB4bmzB67niZU9bnOFL2fq4gTG-vBMoIHVsVX&_nc_ohc=hLLdNsgFYY0AX9aih7N&_nc_ht=scontent.fcgp3-1.fna&oh=427a54a17e9acb7040d6bfda85c3cd6d&oe=61698C5A",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/215349294_114176650925984_6935955492966348957_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeGGlqntcW8uMZEyRaUxTk4Qd8gT06RRmsx3yBPTpFGazCOKrUHiLz8qe05Tov_h_L1x8EwL20VHczel0djYW1sT&_nc_ohc=Q-SX539N-lQAX95o1vt&_nc_ht=scontent.fcgp3-1.fna&oh=2bcfad45bd19ef89dc554c680a407978&oe=616AD93A",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/221836214_121688286841487_5808628666005601662_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeG6OYOU65E_441hOh8WCjFR2ITuBdifUAvYhO4F2J9QC2R35p3ST3Xxxxjp9kg8fCQ2aKCgo8O4fNAIoOFSMiqW&_nc_ohc=DBB4R_g24kUAX8c7Sg5&_nc_ht=scontent.fcgp3-1.fna&oh=bba267b69b40f74bdcc2499c3aa4f23d&oe=616A8A9D",
    "https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/226640215_121688403508142_651200380712614082_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeE8Hv_KXtszxvj5iakaetYmXwaWJVIfUpdfBpYlUh9Sl6mlXeasG7QnqRJHonO7vVxrFklCojumAIC5GVwfKZ1K&_nc_ohc=ltJdmdbvqbsAX-eEgqr&_nc_ht=scontent.fcgp3-1.fna&oh=bba5126c8d6c35585c709c4de4224a18&oe=616A8255",
  ];

  var text = [
    "কাচা গোল্লা😍",
    "সিলবাজা😍",
    "চিকেন কাটলেট",
    "চিকেন চপ😍",
    "ককো মাফিন😍",
    "চকলেট মাফিন😍",
    "KHAJA😍",
    "চিকেন নাগেট😍",
    "Full platter😍",
    "Chicken lolipop"
  ];
  var taka = [
    "৳220",
    "৳420",
    "৳320",
    "৳520",
    "৳620",
    "৳260",
    "৳290",
    "৳420",
    "৳420",
    "৳920"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Homie and Foodie",
          style: TextStyle(
            fontFamily: "Galada",
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                elevation: 20,
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Hamid()));
                  },
                  // onDoubleTap: null,
                  // onLongPress: null,
                  // onTapDown:null,
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              img[index],
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Galada",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Text(
                              taka[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Galada",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                minimumSize: Size(40, 30), //////// HERE
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Hamid()));
                              },
                              child: const Text(
                                'BuY',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Galada",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 310,
            color: Colors.pink,
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),

                  ),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.white,
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.white,
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                ),
                Divider(
                  height: 5,
                  thickness: 3,
                  color: Colors.yellow,
                  indent:20,
                  endIndent: 20,
                ),
                Card(
                  child: ListTile(
                    title: Text("Hamid Hosen"),
                    subtitle: Text("EDU"),
                    trailing: Icon(Icons.forward),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("Image/img4.jpg"),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           itemCount: 13,
//           physics: AlwaysScrollableScrollPhysics(),
//           reverse: true,
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           itemBuilder: (context, index) => Card(
//             color: Colors.yellow,
//             child: Center(child: Text("${index}")),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0)),
//           ),
//         ),
//       ),
//     );
//   }
// }