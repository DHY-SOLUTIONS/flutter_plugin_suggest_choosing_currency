import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

import 'components/components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController textController= TextEditingController();
  RemindMoney remind= RemindMoney();
  List<int> listMoney = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: textController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                listMoney= RemindMoney.setShowRemind(value, listMoney);
                setState(() {});
              },
            ),
            buildRemindMoney(),
          ],
        )
      ),
    );
  }

  Widget buildRemindMoney(){
    return listMoney.isNotEmpty
      ? Wrap(
          children: List.generate(
          listMoney.length,
          (index) => InkWell(
            onTap: () {
              setMoneyInput(index);
              listMoney.clear();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Chip(
                label: Text(
                  AppCurrencyFormat.formatMoneyD(
                    listMoney[index],
                  ),
                ),
              ),
            ),
          ),
        ))
      : const SizedBox();
  }

  void setMoneyInput(int index){
    textController.text=AppCurrencyFormat.formatMoneyD(listMoney[index]);
    listMoney=[];
    setState(() {});
  }
}
