import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/components/home_page_component.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  var tableHeadTextStyle = const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(
      0xFF03002F));

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height * 0.08),
        child: const CustomAppBar(
          title: "Flutter CRUD OPERATION",
        ),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xffb3f6a4),
              Color(0xa44c8e88),
              Color(0xffe5cef5),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(width: 2,color: const Color(0xFF680037)),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: <TableCell>[
                  TableCell(
                    child: Center(child: Text('Name',style: widget.tableHeadTextStyle,)),
                  ),
                  TableCell(
                    child: Center(child: Text('Email',style: widget.tableHeadTextStyle,)),
                  ),
                  TableCell(
                    child: Center(child: Text('Address',style: widget.tableHeadTextStyle,)),
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
