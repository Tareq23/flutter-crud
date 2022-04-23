import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  const CustomAppBar({Key? key,required this.title}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff020409),
        centerTitle: true,
        title: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style: const TextStyle(fontSize:16,fontWeight:FontWeight.w600,color: Color(
                  0xffc9e0ff)),),
              ElevatedButton(onPressed: (){}, child: const Text('Add New')),
            ],
          ),
        )
    );
  }
}
