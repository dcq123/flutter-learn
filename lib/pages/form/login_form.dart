import 'package:flutter/material.dart';

class LoginFormPage extends StatefulWidget {
  @override
  _LoginFormPageState createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  // 通过声明GlobalKey并绑定到Form组件上，在其他地方通过该key去获取组件状态
  final formkey = GlobalKey<FormState>();

  bool autovalidate = false;
  String username, password;

  String _usernameValidator(value) {
    if (value.isEmpty) {
      return "请输入用户名";
    }
    return null;
  }

  String _passwordValidator(value) {
    if (value.isEmpty) {
      return "请输入密码";
    }
    return null;
  }

  void _loginSubmit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();

      debugPrint("username=$username");
      debugPrint("password=$password");

      FocusScope.of(context).requestFocus(new FocusNode());

      Scaffold.of(formkey.currentContext).showSnackBar(SnackBar(
        content: Text("正在登录中..."),
      ));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 26,
                    ),
                    labelText: "用户名",
                    hintText: "请输入用户名",
                    helperText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                validator: _usernameValidator,
                autovalidate: autovalidate,
                onSaved: (value) {
                  username = value;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 26,
                    ),
                    labelText: "密码",
                    hintText: "请输入密码",
                    helperText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                validator: _passwordValidator,
                autovalidate: autovalidate,
                onSaved: (value) {
                  password = value;
                },
              ),
              SizedBox(height: 12),
              Container(
                height: 48,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text("登 录",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onPressed: _loginSubmit,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
