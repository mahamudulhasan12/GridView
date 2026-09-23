import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_button.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_text.dart';
import 'package:grid_view_practrice/view/Custom%20widget/app_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  List listData = [];
  int? selcetIndex;
  void loadData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? jsonString = pref.getString("notes");
    if (jsonString != null) {
      List<dynamic> decodedList = jsonDecode(jsonString);
      setState(() {
        listData = decodedList.map((item) => item.toString()).toList();
      });
    }
  }

  void addData() async {
    if (nameController.text.isEmpty) return;
    SharedPreferences pref = await SharedPreferences.getInstance();
    // await pref.getString("notes");

    String text = nameController.text;
    if (selcetIndex == null) {
      listData.add(text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: AppText(
            text: "Add sucessfully",
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.green,
        ),
      );
      setState(() {});
    } else {
      listData[selcetIndex!] = text;
      selcetIndex = null;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: AppText(
            text: "Update Sucessfully",
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.green,
        ),
      );
    }
    setState(() {});
    String encodeList = jsonEncode(listData);
    await pref.setString("notes", encodeList);
    log("$encodeList");
    nameController.clear();
  }

  void deleteData(int index) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    listData.removeAt(index);
    setState(() {});
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(
          text: "Delete Sucessfully",
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.green,
      ),
    );
    String encodeList = jsonEncode(listData);
    await pref.setString("notes", encodeList);
  }
  // void updataData()async{
  //   String data = nameController.text;
  // }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "Local Storage",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppTextField(
                onTab: () {},
                hindText: "Add your note",

                inputType: TextInputType.text,
                controller: nameController,
                borderRadius: BorderRadius.circular(10),
                fillColor: Colors.white,
                filled: true,
                borderSide: BorderSide(width: 0.5, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: SizedBox(
                  height: 45,
                  child: AppButon(onPressed: addData, text: "Save"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selcetIndex = index;
                          nameController.text = listData[index];
                        });
                      },
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 10,
                            child: AppText(text: "${index + 1}"),
                          ),
                          title: AppText(text: "${listData[index]}"),
                          trailing: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext cotext) {
                                  return AlertDialog(
                                    title: AppText(text: "Delete Confirmation"),
                                    content: AppText(
                                      text:
                                          "Are you sure you want to delete this note?",
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          deleteData(index);
                                          Navigator.pop(context);
                                        },
                                        child: AppText(
                                          text: "Delete",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.redAccent,
                                        ),
                                      ),

                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: AppText(
                                          text: "Cancel",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.delete_forever),
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
