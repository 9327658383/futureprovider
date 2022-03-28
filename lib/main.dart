import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futureprovider/controller.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(MaterialApp(home:futurepro(),));
}
class futurepro extends StatelessWidget {
  const futurepro({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureProvider<int>(initialData:0,create: (context) => controller().printdata(),
        builder: (context, child) {
        return FutureBuilder(future: controller().printdata(),builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting)
            {
              return Center(child: CircularProgressIndicator(),);
            }
          else
          {
            return Center(child: Text("${snapshot.data}"),);
          }
        },);
      },
      ),
    );
  }
}
