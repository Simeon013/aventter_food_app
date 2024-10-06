import 'package:aventter_food_app/constants/colors.dart';
import 'package:aventter_food_app/constants/datas.dart';
import 'package:aventter_food_app/constants/dimens.dart';
import 'package:aventter_food_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    super.initState();
  }

  List categories = Categories;


  List plates = Plates;

  @override
  Widget build(BuildContext context) {
    print(categories);
    print(plates);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenWidth(context) * 0.05,
                  vertical: AppDimens.screenHeight(context) * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_outlined, color: AppColors.grey101, size: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_on_outlined, color: AppColors.grey101, size: 25,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cotonou, Bénin',
                          style: GoogleFonts.manrope(
                            color: AppColors.grey101,
                            fontSize: 17,
                          )
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_drop_down_outlined, color: AppColors.grey101, size: 25),
                      ]
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(Assets.me.path),
                    )
                  ]
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenWidth(context) * 0.05,
                ),
                child: Column(
                  children: [
                    Text(
                      'Good morning',
                      style: GoogleFonts.manrope(
                        color: AppColors.grey102,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'John Doe',
                      style: GoogleFonts.manrope(
                        color: AppColors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenWidth(context) * 0.05,
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppDimens.screenWidth(context) * 0.7,
                      height: AppDimens.screenWidth(context) * 0.15,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey105,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.search, color: AppColors.grey102, size: 28,),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Search',
                            style: GoogleFonts.manrope(
                              color: AppColors.grey102,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: AppDimens.screenWidth(context) * 0.15,
                      width: AppDimens.screenWidth(context) * 0.15,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.grey105,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      ),
                      child: Icon(Icons.tune, color: AppColors.grey102, size: 28,),
                    )
                  ],
                )
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenWidth(context) * 0.05,
                ),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.manrope(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: GoogleFonts.manrope(
                        color: AppColors.grey102,
                        fontSize: 14,
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimens.screenHeight(context) * 0.02,
                  ),
                  child: Row(
                    children: List.generate(
                      categories.length,
                      (index) {
                        List category = categories[index];
                        print(category[1]);
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? AppDimens.screenWidth(context) *
                                0.05 : 0,
                          ),
                          child: Container(
                            width: AppDimens.screenWidth(context) * 0.4,
                            height: AppDimens.screenHeight(context) * 0.15,
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.grey105,
                                  offset: Offset(0, 2),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Stack( // Use a Stack to position widgets on top of each other
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        category[0],
                                        style: GoogleFonts.manrope(
                                          color: AppColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                // Add the image above the circle
                                Positioned(
                                  bottom: -10, // Adjust as necessary
                                  right: 0,
                                  child: Image
                                      .asset( // You can use Image.network if it's from a URL
                                    category[1],
                                    // Replace with your image path
                                    width: AppDimens.screenWidth(context) * 0.2, // Adjust the size as needed
                                  ),
                                ),
                                // Circle positioned at the bottom-left corner
                                Positioned(
                                  bottom: -100,
                                  // Adjust the circle's position as necessary
                                  right: -50,
                                  child: Container(
                                    width: AppDimens.screenWidth(context) * 0.4,
                                    height: AppDimens.screenHeight(context) * 0.2,
                                    decoration: BoxDecoration(
                                      color: category[2].withOpacity(0.1),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenWidth(context) * 0.05,
                ),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: GoogleFonts.manrope(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: GoogleFonts.manrope(
                        color: AppColors.grey102,
                        fontSize: 14,
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimens.screenWidth(context) * 0.05,
                    vertical: AppDimens.screenHeight(context) * 0.02,
                  ),
                  child: Row(
                    children: List.generate(
                      plates.length,
                      (index) {
                        List plate = plates[index];
                        print(plate[1]);
                        return Container(
                          width: AppDimens.screenWidth(context) * 0.5,
                          height: AppDimens.screenHeight(context) * 0.35,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.grey105,
                                offset: Offset(0, 2),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: AppDimens.screenWidth(context) * 0.5,
                                height: AppDimens.screenHeight(context) * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(plate[1]),
                                    fit: BoxFit.cover,
                                  ),
                                  color: AppColors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                        bottom: 10
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '${plate[3]}',
                                            style: GoogleFonts.manrope(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: AppColors.yellow
                                          )
                                        ],
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppDimens.screenWidth(context) * 0.05,
                                  vertical: AppDimens.screenHeight(context) *0.02
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      plate[0],
                                      style: GoogleFonts.manrope(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    Text(
                                      'Found in ${plate[2]} Restaurants',
                                      style: GoogleFonts.manrope(
                                        color: AppColors.grey101,
                                        fontSize: 11,
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ]
          ),
        )
      ),
    );
  }
}
