import 'dart:ui';

import 'package:adrian_maulana_firdaus_2142425/pages/activityPage/widget/activity_banner.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../models/models.dart';
import '../../utils/dimention/dimentions.dart';
import '../../utils/widget/divider_text.dart';
import '../../utils/widget/small_text.dart';
import '../berandaPage/widget/venue_content.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  // late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    // _controller = VideoPlayerController.asset("assets/images/video.mp4")
    //   ..initialize().then((_) {
    //     _controller.play();
    //     _controller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized.
    //     setState(() {});
    //   });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight:
                          Radius.circular(Dimensi.blockSizeVertical! * 1),
                      bottomLeft:
                          Radius.circular(Dimensi.blockSizeVertical! * 1))),
              automaticallyImplyLeading: false,
              backgroundColor: ColorTheme.bgColor,
              expandedHeight: Dimensi.blockSizeVertical! * 25,
              floating: true,
              centerTitle: true,
              title: Column(
                children: [
                  SizedBox(
                    height: Dimensi.blockSizeVertical! * 2.3,
                  ),
                  SmallText(
                    text: "Love Wedding",
                    size: Dimensi.blockSizeVertical! * 3,
                    color: ColorTheme.primaryColor,
                  ),
                  SmallText(
                    text: "easy to fall in love",
                    size: Dimensi.blockSizeVertical! * 1.5,
                    spacing: 2,
                    color: ColorTheme.primaryColor,
                  ),
                ],
              ),
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  width: Dimensi.blockSizeHorizontal! * 100,
                  height: Dimensi.blockSizeVertical! * 5,
                  margin: EdgeInsets.all(Dimensi.blockSizeVertical! * 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimensi.blockSizeVertical! * 1),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hoverColor: ColorTheme.primaryColor,
                      labelText: 'Search',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorTheme.primaryColor),
                      ),
                      labelStyle: TextStyle(
                          color: ColorTheme.primaryColor,
                          fontSize: Dimensi.blockSizeVertical! * 1.5),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: ColorTheme.primaryColor,
                        size: Dimensi.blockSizeVertical! * 3,
                      ),
                    ),
                  ),
                ),
              )),
          SliverToBoxAdapter(
            child: SizedBox(height: Dimensi.blockSizeVertical! * 7),
          ),
          SliverToBoxAdapter(
            child: DividerText(
              text: "Love Wedding Gallery",
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: Dimensi.blockSizeVertical! * 30,
              padding: EdgeInsets.only(
                bottom: Dimensi.blockSizeVertical! * 1,
                top: Dimensi.blockSizeVertical! * 1,
              ),
              color: ColorTheme.bgColor,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisCount: 1,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    // crossAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  primary: false,
                  // scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemCount: activityBanner.length,
                  itemBuilder: (context, index) => ActivityCard(
                        color: ColorTheme.primaryColor,
                        img: activityBanner[index].img,
                      )),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Dimensi.blockSizeVertical! * 7),
          ),
          SliverToBoxAdapter(
            child: DividerText(
              text: "Other Activity...",
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: Dimensi.blockSizeVertical! * 40,
              padding: EdgeInsets.only(
                bottom: Dimensi.blockSizeVertical! * 1,
                top: Dimensi.blockSizeVertical! * 1,
              ),
              color: ColorTheme.bgColor,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    // crossAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  primary: false,
                  // scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemCount: activityBanner2.length,
                  itemBuilder: (context, index) => ActivityCard(
                        color: activityBanner2[index].isNoted == false
                            ? Colors.grey
                            : ColorTheme.primaryColor,
                        img: activityBanner2[index].img,
                      )),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Dimensi.blockSizeVertical! * 7),
          ),
          SliverToBoxAdapter(
            child: DividerText(
              text: "Colaboration with",
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: Dimensi.blockSizeVertical! * 7,
              padding: EdgeInsets.only(
                bottom: Dimensi.blockSizeVertical! * 1,
                top: Dimensi.blockSizeVertical! * 1,
              ),
              color: ColorTheme.bgColor,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  // crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                primary: false,
                // scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: activityBanner3.length,
                itemBuilder: (context, index) => Colaboration(
                  img: activityBanner3[index].img,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Dimensi.blockSizeVertical! * 5),
          ),
        ],
      ),
    );
  }
}

class Colaboration extends StatelessWidget {
  const Colaboration({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensi.blockSizeHorizontal! * 2),
      child: CircleAvatar(
        backgroundImage: AssetImage(img),
      ),
    );
  }
}
