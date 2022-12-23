import 'package:flutter/material.dart';
import 'package:simple_sumapp/style/app_button.dart';
import 'package:simple_sumapp/style/input_filed_design.dart';
import 'package:simple_sumapp/style/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map<String, num> formValue = {
   "Num1":0,
   "Num2":0,
   "Num3":0,
  };

  num addition = 0;



  @override
  Widget build(BuildContext context) {


    MyInputOnchange(InputKey, InputValue){
      setState((){
        formValue.update(InputKey, (value) => num.parse(InputValue));
      });
    }


    // add buttion

    addAllNumber(){
     setState((){
       addition = formValue["Num1"]! + formValue["Num2"]!;
     });
      //print(addition);
    }





    return Scaffold(
      appBar: AppBar(title: Text('Simple Sum App'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(addition.toString(),style: HeadTextStyle(),),


            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.number,

              //set value num1
              onChanged:  (value){
                MyInputOnchange("Num1", value);
              },
              decoration: AppInputStyle('First Number'),),

            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,

              //set value num2
              onChanged:  (value){
                MyInputOnchange("Num2", value);
              },
              decoration: AppInputStyle('Second Number'),),







            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: AppButtonStyle(),
                onPressed: () {
                  addAllNumber();
                },
                child: Text('Add'),

              ),
            )
          ],
        ),
      ),
    );
  }
}
