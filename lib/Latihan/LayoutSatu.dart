import 'package:flutter/material.dart';

class LayoutSatu extends StatelessWidget {
  const LayoutSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 72,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 249, 251),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [BoxShadow(color: Colors.black,blurRadius: 6 )],
            ),
            child: Row(
                children: [
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                ""
                            ),
                        ),
                    ),
                    SizedBox(width: 12,),
                    Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("Muhammad Defahni"),
                            SizedBox(height: 4,),
                            Text("XII RPL 2")
                        ],
                    ))
                ],
            ),
        )
    );
  }
}