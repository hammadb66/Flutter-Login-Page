import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Picture
  String netImage =
      "https://support.activision.com/servlet/servlet.ImageServer?id=0150B000005cw59&oid=00DU0000000HMgw&lastMod=1475523066000";
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              right: -100,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue.withAlpha(100),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.indigo.withAlpha(100),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 100),
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: NetworkImage(netImage),
                ),
                SizedBox(height: 20),
                Text(
                  "Enter Your Cod4 Login Id",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                TextFormField(
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  controller: phoneNumber,
                  decoration: InputDecoration(
                    hint: Text("Phone Number"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter correct number";
                    }
                    if (value.length < 11) {
                      return "Please Enter Full Number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hint: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                ),
                SizedBox(height: 23),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {}
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(15),
                    ),
                    child: Text("Submit"),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.blue),
                  child: Text("Don't have an account? Register here"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



