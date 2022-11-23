import 'package:flutter/material.dart';
class  CounterComponent extends StatelessWidget {
  const  CounterComponent({super.key});    
  static ValueNotifier<int> count = ValueNotifier<int>(7);  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: 
      [
       const SizedBox(width: 20,),
        Stack(
          children: 
          [
            
            Container(
              decoration: BoxDecoration(                
                 border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                ), 
              ),
              height: 120,
              width: 200,
              child:  Center(
               child : 
               ValueListenableBuilder(
                  valueListenable: count,
                  builder: (context, value, _) 
                  {
                  return Text('$value',style: const TextStyle(fontSize: 22),);
                   },
                   ),
              ),
              
            ),
             Positioned(
              bottom: 20,
              left: 0,
              top: 20,
              child: GestureDetector(
                onTap: (() {
                count.value++;
                }),
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                   border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                  )),
                  height: 30,
                  width:  60,
                  child:  Center(
                    child: Column(
                      children:
                     const 
                       [
                        SizedBox(height: 10,),
                        Text('+',style: TextStyle(fontSize: 22),),
                        Text('\n button')
                       ],
                    )),
                 ),
              ),
              ),
            Positioned(
              bottom: 20,
              right: 0,
              top: 20,
              child: GestureDetector(
                onTap: (() {  
                  count.value--;     
                }),
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                   border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                  )),
                  height: 40,
                  width:  60,
                  child: Center(child:
                         Column(
                          children: 
                         const [
                            SizedBox(height: 10,),
                            Text('-',style: TextStyle(fontSize: 24),),
                            Text('\n button')
                          ],
                        )),
                 ),
              ),
              ),
          ],
        ),
        const SizedBox(width: 10,),
        const Text(' Counter \n Component',style: TextStyle(fontSize: 23),),
      ],
    );
  }
}