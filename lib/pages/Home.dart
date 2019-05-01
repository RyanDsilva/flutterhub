import 'package:flutter/material.dart';

import 'package:flutterhub/components/TextStyles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  String username = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "FlutterHub",
          style: titleStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon.png',
                  fit: BoxFit.contain,
                  scale: 0.5,
                ),
                Builder(
                  builder: (context) => Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter Username',
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Username';
                                }
                              },
                              onSaved: (value) =>
                                  this.setState(() => this.username = value),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 16.0,
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  final form = formKey.currentState;
                                  if (form.validate()) {
                                    form.save();
                                    Navigator.pushNamed(
                                        context, '/users/' + this.username);
                                  }
                                },
                                child: Text(
                                  'Search',
                                  style: repoStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
