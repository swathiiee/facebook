import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final List<Map<String,String>> feeData=const
  [
    {
      "name":"Albin",
      "profilepic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt9ISaBFDC88ejiGrYACSt81CFq21QsZ6bow&s",
      "postImage":"https://i.pinimg.com/originals/83/9a/58/839a58a465ee35b85bda181b72e360fe.jpg",
      "location":"KOLLAM",
      "likes":"223",
    },
    {
      "name":"Sneha",
      "profilepic":"https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg",
      "postImage":"https://images.pexels.com/photos/596132/pexels-photo-596132.jpeg?cs=srgb&dl=pexels-brunoscramgnon-596132.jpg&fm=jpg",
      "location":"TVM",
      "likes":"223",
    },
    {
      "name":"Arun",
      "profilepic":"https://cdn-icons-png.flaticon.com/512/6997/6997662.png",
      "postImage":"https://media.istockphoto.com/id/157681198/photo/dandelion-seed.jpg?s=612x612&w=0&k=20&c=TfhCtc_Y1oSpdlL7o6yo7BTfgnD0RCy6yF1SgvQO0Jk=",
      "location":"ADR",
      "likes":"334"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: feeData.length,
        itemBuilder: (context,index){
          return  Container(
              child:Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(feeData[index]["profilepic"]!),
                    ),
                    title: Text(feeData[index]["name"]!,style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(feeData[index]["location"]!,style: TextStyle(fontSize: 10)),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Image.network(feeData[index]["postImage"]!,
                      fit: BoxFit.fill,width: double.infinity),
                  SizedBox(
                    height: 20,
                  ),
                  Row
                    (
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){} , icon: Icon(Icons.favorite_border)),
                      Text(feeData[index]["likes"]!),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment_outlined)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send)),
                    ],
                  ),
                ],
              )
          );
        }
    );
  }
}
