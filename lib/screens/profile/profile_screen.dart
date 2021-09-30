import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 17,
          ),
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      backgroundColor: kAccentColor,
      body: Stack(
        children: [
          Container(
            height: size.height * 0.33,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          //BottomPart(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: size.height * 0.26,
                ),
                height: size.height * 0.32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(3, 6),
                    ),
                  ],
                  color: kAccentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.height * 0.18,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(3, 5),
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://i.pinimg.com/236x/00/ff/40/00ff40f3e0d9b05e1a53038d48e26747--posing-male-models-male-model-poses.jpg"),
                        ),
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(70),
                        
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "@Assar Developer",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: size.height*0.025,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hey There! I am flutter developer android and IOS i have 2 year experience",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.height*0.020,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
