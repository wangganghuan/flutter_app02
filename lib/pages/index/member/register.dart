//注册
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //账号
  var UserName = "";
  //密码
  var Password = "";
  //确认密码
  var AffirmPassword = "";
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("注册"),
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
                TextField(
                  obscureText: this.showPassword,
                  decoration: InputDecoration(
                    hintText: "确认密码",
                  ),
                  onChanged: (vlaue) {
                    setState(() {
                      this.AffirmPassword = vlaue;
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
                          "注册",
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
                    Text("已有账号,"),
                    FlatButton(
                      highlightColor: Colors.white,
                      splashColor: Colors.white,
                      child: Text(
                        "去登陆~",
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/log");
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
