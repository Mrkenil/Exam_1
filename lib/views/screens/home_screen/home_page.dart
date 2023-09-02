import 'package:exam_1/utils/global_utils.dart';
import 'package:exam_1/views/modal/joke_api_modal.dart';
import 'package:exam_1/views/screens/helpers/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/save');
              },
              icon: Icon(Icons.save))
        ],
        title: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Joke For you",
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 30,
              ),
              FutureBuilder(
                future: Jokes.jokes.get(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("${snapshot.error}"),
                    );
                  } else if (snapshot.hasData) {
                    joke_modal? joke = snapshot.data;
                    return Container(
                      height: 300,
                      width: double.infinity,
                      padding: EdgeInsets.all(14),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${joke!.value}",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {
                                saved.add({
                                  'value': "${joke!.value}",
                                  'date':
                                      "${dateTime.day}/${dateTime.month}/${dateTime.year}"
                                });
                              },
                              icon: Icon(Icons.download)),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xfff7ce76),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {});
        },
        label: Text(
          "Fetch My Laugh",
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
