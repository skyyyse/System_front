import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controller/auth_controller.dart';
class login extends StatelessWidget {
  login({super.key});
  final controller=Get.put(auth_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: constraints.maxWidth<800?constraints.maxWidth*0.75:constraints.maxWidth*0.5,
                          child: TextField(
                            controller: controller.email,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'example@gmail.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red, width: 2.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
                              ),
                              fillColor: Colors.grey,
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: constraints.maxWidth<800?constraints.maxWidth*0.75:constraints.maxWidth*0.5,
                          child: TextField(
                            controller: controller.password,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'hgtuyvueeh543',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.red, width: 2.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
                              ),
                              fillColor: Colors.grey,
                              filled: true,
                              labelStyle: TextStyle(color: Colors.white),
                              suffixIcon:Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: constraints.maxWidth<800?constraints.maxWidth*0.75:constraints.maxWidth*0.5,
                          child: MaterialButton(
                            onPressed: () {
                              controller.login_server();
                            },
                            color: Colors.blue,
                            textColor: Colors.white,
                            minWidth: double.infinity,
                            height: 60,
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('Login'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },)
    );
  }
}
