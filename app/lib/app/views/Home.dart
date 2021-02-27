import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 65,
                      child: DropdownButton(
                        isExpanded: true,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text("Real"),
                          ),
                          DropdownMenuItem(
                            child: Text("Dolar"),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {},
              child: Text("Converter"),
            ),
          ],
        ),
      ),
    ));
  }
}
