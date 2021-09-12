//list into map


void main(){

  //List<Map<dynamic,dynamic>> li=[];
  var ls=[
    {
      "Name":"Hamid Hosen",
      "Age":21,
      "Gender":"Male",
    },
    {
      "Name":"Hamid Hosen Azad",
      //"Age":25,
      "Age":25,
      "Gender":"Male",
    },
        {
      "Name":"Hamid Azad",
      "Age":20,
      "Gender":"Male",
    }
  ];

  //print(ls);
  //print(ls[2]["Age"]);
  for(int i=0;i<ls.length;i++){
    print(ls[i]["Name"]);
  }
}

// void main(){
//  Map<dynamic,dynamic>
  //Map<String,String> mymap
//   Map mymap={
//     //"Name":"Hamid Hosen",
//     "Name":["Hamid","Hosen","Azad"],
//     "Age":21,
//     "gender":"Male",
//     "location":"Bangladesh",
//   };

//   print(mymap["Age"]);
//   print(mymap.keys);
//   print(mymap["Name"]);
//   print(mymap["Name"][1]);
// }

// import 'dart:io';
// void main(){
//   var li=[5,10,15,20,25,30,35];
//   print("Enter your number:");
//   int? x = int.parse(stdin.readLineSync()!);
//   int y=0;

//   // for(int i=0;i<li.length;i++){
//   //   if(li[i]==x){
//   //     print("Yes");
//   //     y=1;
//   //     break;
//   //   }
//   // }
//   li.forEach((element) {
//     if(element==x){
//       print("Yes");
//       y=1;
//     }
//   });
  
//   if(y==0){
//     print("No");
//   }
// }


// // void main(){
// //   List<String> li=["C","C++","java","Python"];

// //   //li.add("Dart");
// //  // li.replaceRange(1, 2, ["HTML"]);
// //   //li.replaceRange(3, 4, ["osof"]);
// //   //li.removeRange(2, 3);
// //   li.clear();

// //   print(li);
// // }
