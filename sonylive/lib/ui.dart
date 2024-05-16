import 'package:flutter/material.dart';

import 'package:sonylive/widgets/custom_text.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passworController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: const [
                    Image(
                        height: 80,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuX7IIWybdy3OhU6Gj8YW9bHtrVa18ymOrtuVhYelUrVHIlB4eiFt4LDWnVzCr4OFkF7c&usqp=CAU")),
                    Text(
                      'Welcome,Liv it up!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Help us with your details to get the best experience",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontStyle: FontStyle.normal),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Select Your Gender",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextButton.icon(
                        icon: Icon(
                          Icons.male,
                          color: Colors.white,
                          size: (30),
                        ),
                        label: Text(
                          'Male',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {},
                      ),
                      width: 100,
                      height: 70,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextButton.icon(
                        icon: Icon(
                          Icons.female,
                          color: Colors.white,
                          size: (30),
                        ),
                        label: Text(
                          'Female',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {},
                      ),
                      width: 100,
                      height: 70,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: TextButton.icon(
                        icon: Icon(
                          Icons.attribution_sharp,
                          color: Colors.white,
                          size: (30),
                        ),
                        label: Text(
                          'Others',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {},
                      ),
                      width: 100,
                      height: 70,
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Enter Your Date of Birth",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                CustomText(
                    label: "DD/MM/YYYY", controller: nameController.text),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
