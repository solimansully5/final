//import 'package:flutter/material.dart';
//import 'colors.dart';
//
//class Screen2 extends StatelessWidget {
//
//  TextEditingController emailController = TextEditingController();
//  TextEditingController passwordController = TextEditingController();
//
import 'package:elearning/routing-constants.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'view_models/registration_vm.dart';
class Screen2 extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

//  createUser(BuildContext context)async{
//    await AuthManager.createNewUser(
//        email: emailController.text,
//        password: passwordController.text,
//        onSuccess: ()=> Navigator.pushNamed(context, homeRoute),
//        onFail: (error)=> print(error)
//    );
//    print('done');
//  }

  _createUser(BuildContext context){
    /// To add loading bar
    RegistrationVM.getRegistration(
      email: emailController.text,
      name: 'name',
      password: passwordController.text,
      confirmation: passwordConfirmationController.text,
      onSuccess: ()=> Navigator.pushNamed(context, MainPageRoute),
      onFail: ()=> print('error')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.main,
        title: Center(
          child: Text('sign up '),
        ),
      ),
      body: Container(
        color: AppColors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'EMAIL',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordConfirmationController,
              decoration: InputDecoration(
                labelText: 'RE-ENTER PASSWORD',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30,),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: InkWell(
                  onTap: ()=> _createUser(context),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Text('Create User ', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
