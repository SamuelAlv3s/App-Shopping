import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1, 2),
                    blurRadius: 5,
                    spreadRadius: 1)
              ]),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.emailAddress,

                        decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: TextButton(
                          child: Text(
                            'Sign Un',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
