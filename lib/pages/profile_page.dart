
import 'package:flutter/material.dart';
import 'package:second_mobile_app/styleguide/colors.dart';
import '../commons/profile_info_big_card.dart';
import '../styleguide/text_style.dart';
import '../commons/opaque_image.dart';
import '../commons/my_info.dart';
import 'super_likes_me_page.dart';
import '../commons/profile_info_card.dart';




class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body:  Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "Kabul 13th Area",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),

                          ProfileInfoBigCard(
                            firstText: "15",
                            secondText: "Kabul 6th Area ",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),

                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "1234",
                            secondText: "Afghanistan",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),

                          ProfileInfoBigCard(
                            firstText: "3029",
                            secondText: "Herat/Center ",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),

                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "2345",
                            secondText: "Medon Wardak",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SuperLikesMePage(),
                              ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "8987",
                              secondText: "Faryab ",
                              icon: Image.asset(
                                "assets/icons/sad_smiley.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                ),

              )
            ],
          ),

          Positioned(
            top: screenHeight *(4/9)-(80/2),
            left: 16,
            right: 16,

            child: Container(
              height: 80,
              child: Row(
                children: [
                  ProfileInfoCard(
                    firstText:"54 %",
                    secondText:"Progress",

                  ),
                  SizedBox(width:10,),
                  ProfileInfoCard(
                    hasImage:true,
                    imagePath :"assets/icons/pulse.png",
                  ),
                  SizedBox(width: 10,),
                  ProfileInfoCard(
                    firstText:"152",
                    secondText :"Level",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
