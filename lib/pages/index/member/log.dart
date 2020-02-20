//登陆
import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  LogPage({Key key}) : super(key: key);

  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  //账号
  var UserName = "";
  //密码
  var Password = "";
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("登陆"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "用户名",
                  ),
                  onChanged: (vlaue) {
                    setState(() {
                      this.UserName = vlaue;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: this.showPassword,
                  decoration: InputDecoration(
                    hintText: "密码",
                    suffixIcon: IconButton(
                      icon: Icon(this.showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          this.showPassword = !this.showPassword;
                        });
                      },
                    ),
                  ),
                  onChanged: (vlaue) {
                    setState(() {
                      this.Password = vlaue;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text(
                          "登陆",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("还没有账号,"),
                    FlatButton(
                      highlightColor: Colors.white,
                      splashColor: Colors.white,
                      child: Text(
                        "去注册~",
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/register");
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
