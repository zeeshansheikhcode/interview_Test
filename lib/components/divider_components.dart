import 'package:flutter/material.dart';
import 'counter_components.dart';
class DividerComponent extends StatelessWidget {
   DividerComponent({super.key});
  int defaultvalue = 6;
  
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
                ), ),
              height: 120,
              width: 200,
              child: Center(
                child:
                 ValueListenableBuilder(
                  valueListenable: CounterComponent.count,
                  builder: (context, value, _) {
                  return 
                  Text( 
                    '$defaultvalue' '/' 
                    '$value',
                    style:const TextStyle(fontSize: 22),
                     );
                    },
                   ), 
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                 border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                )),
                height: 40,
                width:  75,
                child: Center(
                  child:
                   ValueListenableBuilder(
                  valueListenable: CounterComponent.count,
                  builder: (context, value, _) {
                  return 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text( 
                      '${defaultvalue/value}',
                      style:const TextStyle(fontSize: 18),
                       ),
                  );
                    },
                   ), 
                  ),
              )
            )
          ],
        ),
        const SizedBox(width: 10,),
        const Text(' Divider \n Component',style: TextStyle(fontSize: 23),),
      ],
    );
  }
}