import 'package:exam_1/utils/global_utils.dart';
import 'package:flutter/material.dart';

class save_screen extends StatelessWidget {
  const save_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("saved jokes"),
      ),
      body: (saved.isNotEmpty)
          ? ListView.builder(
              itemCount: saved.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${saved[index]["value"]}"),
                  subtitle: Text("${saved[index]["date"]}"),
                  focusColor: Color(0xfff7ce76),
                );
              },
            )
          : Center(
              child: Container(
                child: Text("You not save any jokes"),
              ),
            ),
    );
  }
}
