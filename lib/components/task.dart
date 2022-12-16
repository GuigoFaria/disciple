import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_pessoal_gui/components/priority.dart';

class Task extends StatefulWidget {
  final String name;
  final int priority;
  const Task(
    this.name,
    this.priority, {
    Key? key,
  }) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int day = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(6)),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 250,
                              child: Text(
                                widget.name,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Priority(widget.priority)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.cyan),
                                fixedSize: MaterialStateProperty.all(
                                  Size.fromHeight(50),
                                )),
                            onPressed: () => {
                                  setState(() => {day++})
                                },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_drop_up_rounded),
                                Text(
                                  'Concluído',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 250,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: day / 21,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Dia $day',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
