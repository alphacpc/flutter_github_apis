import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{

  @override 
  _HomePageState createState() => _HomePageState();

}



class _HomePageState extends State<HomePage>{

  String query = "";
  TextEditingController queryEditingController  = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Hello Flutter ${(query == '')? '' : '[ '+query+' ]'}")),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child : Container(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    onChanged: (value) => {
                      setState(() {
                        this.query = value;
                      })
                    },
                    controller: queryEditingController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left:15, right: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 8, color: Colors.deepOrange)
                      )
                    ),
                  ),
                )
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.query = queryEditingController.text;
                    });
                  })
              ],
            )
          ],
        ),
      ),
    );
  }
}
