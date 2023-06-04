import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  bool isObscuePassword = true; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title:const Text("Edit Profile",style: TextStyle(color: Colors.white),),
        leading:IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, 
        icon:const Icon(Icons.arrow_back,
        color: Colors.white,)
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon:const Icon(
              Icons.privacy_tip_outlined,
              color: Colors.white,),
            
            )
        ],
      ),
      body:Container(
        padding:const EdgeInsets.only(left: 15,top: kDefaultPadding,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color:Colors.white ),
                        boxShadow: [BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1)
                        )
                        ],
                        shape: BoxShape.circle,
                        image:const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile.png")
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child:Container(
                        height: 40,
                        width: 40,
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          color: kPrimaryColor
                        ) ,
                        child:const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )
                      )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              buildTextField("Full Name", "Demon", false),
              buildTextField("Username", "Demon", false),
              buildTextField("Email", "imane@gmail.com", false),
              buildTextField("Password", "*********", true),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: (){}, 
                  style: OutlinedButton.styleFrom(
                    padding:const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                      
                  ),child:const Text("CANCEL",
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.black
                  ),),
                  ),
                  ElevatedButton(
                  onPressed: (){},
                  style:ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  child: const Text("SAVE",
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.white
                  ),
                  ) ,
                  
                  )
                ],
              )
            
            ],
          ),
        ),
      ) ,
    );
  }

  Widget buildTextField(String labelText,String placeholder,bool isPasswordTextFiled ){
    return Padding(
      padding:const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText:isPasswordTextFiled ? isObscuePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextFiled ? 
          IconButton(
            onPressed: (){
              setState(() {

                isObscuePassword= !isObscuePassword;
              });
            },
            icon: Icon(
              isObscuePassword ? Icons.visibility_off :Icons.remove_red_eye ,
            color: Colors.grey,
          )
          ):null,
          contentPadding:const EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          )
        ),
      ),
    );
  }

}