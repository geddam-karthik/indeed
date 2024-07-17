import 'package:flutter/material.dart';

var FirstName = "Karthik";
var LastName = "Geddam";
int password = 7993123;
int number= 7993049793;
String mail='geddam@2123';
class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text(
          'Register',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('First Name',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(1)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(1)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: 'FirstName',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Last Name',style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(1)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(1)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: 'lastname',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Phone Number',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'number',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Email Address',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Enter Email',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Password',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility,
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Confirm Password',style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Conform password',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                          Icons.visibility_off
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(Icons.check_box),
                  Text('I agree to the Terms of use'),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print(FirstName+LastName+"\n"+"my number is$number"+"\n"+mail+"\n"+"password$password");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('SIGN UP',style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Center(child: Text('OR')),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Image(image: AssetImage('assets/images/google1.png'),width: 30,height: 30,),
                  label: const Text('Sign in with Google',style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    // Sign in with Google
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Image(image: AssetImage('assets/images/fb2.png',),width: 40,height: 40,color: Colors.white,),
                  label: const Text('Sign in with FB',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    // Sign in with Facebook
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to sign in screen
                  },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Already a member?',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(width: 5,),
                      RichText(text: const TextSpan(text: 'Sign In',style: TextStyle(color: Colors.red)),)
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}