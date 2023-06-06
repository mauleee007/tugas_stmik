import 'package:adrian_maulana_firdaus_2142425/models/models.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/dimention/dimentions.dart';
import '../../utils/widget/button_categories.dart';
import '../../utils/widget/content_banner.dart';
import '../../utils/widget/costum_app_bar.dart';
import '../../utils/widget/divider_text.dart';
import '../../utils/widget/small_text.dart';
import 'widget/venue_content.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  CarouselController _controller = CarouselController();
  int _current = 0;
  final venueKey = GlobalKey();
  final dressesKey = GlobalKey();
  final categoryKey = GlobalKey();
  final cateringKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CostumAppBar(),
          DividerText(
            text: "Categories",
            key: categoryKey,
          ),
          _categories(),
          CarouselSlider.builder(
              carouselController: _controller,
              options: CarouselOptions(
                  height: Dimensi.blockSizeVertical! * 25,
                  viewportFraction: 1,
                  scrollDirection: Axis.vertical,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              itemCount: banner.length,
              itemBuilder: (context, index, realIndex) => ContentBanner(
                    img: banner[index].img,
                  )),
          SizedBox(
            height: Dimensi.blockSizeVertical! * 7,
          ),
          DividerText(
            text: "Venue",
            key: venueKey,
          ),
          Container(
            height: Dimensi.blockSizeVertical! * 50,
            padding: EdgeInsets.only(
              bottom: Dimensi.blockSizeVertical! * 1,
            ),
            color: ColorTheme.bgColor,
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: ScrollPhysics(),
              itemCount: venue.length,
              itemBuilder: (context, index) => VenueContent(
                img: venue[index].img,
                name: venue[index].title,
                shortDesc: venue[index].shortDesc,
                price: venue[index].price,
              ),
            ),
          ),
          SizedBox(
            height: Dimensi.blockSizeVertical! * 7,
          ),
          DividerText(
            text: "Dresses",
            key: dressesKey,
          ),
          Container(
            height: Dimensi.blockSizeVertical! * 45,
            padding: EdgeInsets.only(
              bottom: Dimensi.blockSizeVertical! * 1,
            ),
            color: ColorTheme.bgColor,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 5,
                  // crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                primary: false,
                physics: ScrollPhysics(),
                itemCount: dress.length,
                itemBuilder: (context, index) => DressesContent(
                      img: dress[index].img,
                      name: dress[index].title,
                      shortDesc: dress[index].shortDesc,
                      price: dress[index].price,
                      isFavorite: dress[index].isFavorite != 0
                          ? ColorTheme.primaryColor
                          : Colors.white,
                    )),
          ),
          SizedBox(
            height: Dimensi.blockSizeVertical! * 7,
          ),
          DividerText(
            text: "Catering",
            key: cateringKey,
          ),
          Container(
            height: Dimensi.blockSizeVertical! * 40,
            padding: EdgeInsets.only(
              bottom: Dimensi.blockSizeVertical! * 1,
            ),
            color: ColorTheme.bgColor,
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: ScrollPhysics(),
              itemCount: catering.length,
              itemBuilder: (context, index) => CateringContent(
                name: catering[index].title,
                img: catering[index].img,
                shortDesc: catering[index].shortDesc,
                price: catering[index].price,
              ),
            ),
          ),
          SizedBox(
            height: Dimensi.blockSizeVertical! * 7,
          ),
        ],
      ),
    );
  }

  Row _categories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Dimensi.blockSizeHorizontal! * 3,
        ),
        ButtonCategories(
          name: "Venue",
          icon: Icons.panorama_outlined,
          tap: () {
            Scrollable.ensureVisible(venueKey.currentContext!,
                curve: Curves.easeInOut, duration: Duration(seconds: 1));
          },
        ),
        ButtonCategories(
          name: "Dresses",
          icon: Icons.person_search_outlined,
          tap: () {
            Scrollable.ensureVisible(dressesKey.currentContext!,
                curve: Curves.easeInOut, duration: Duration(seconds: 1));
          },
        ),
        ButtonCategories(
          name: "Catering",
          icon: Icons.food_bank_outlined,
          tap: () {
            Scrollable.ensureVisible(cateringKey.currentContext!,
                curve: Curves.easeInOut, duration: Duration(seconds: 1));
          },
        ),
        SizedBox(
          width: Dimensi.blockSizeHorizontal! * 3,
        ),
      ],
    );
  }
}

class CateringContent extends StatelessWidget {
  const CateringContent({
    super.key,
    required this.img,
    required this.name,
    required this.shortDesc,
    required this.price,
  });
  final String img;
  final String name;
  final String shortDesc;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        minVerticalPadding: Dimensi.blockSizeVertical! * 2,
        minLeadingWidth: Dimensi.blockSizeHorizontal! * 1,
        leading: Container(
          margin: EdgeInsets.only(
            top: Dimensi.blockSizeVertical! * 1,
          ),
          width: Dimensi.blockSizeHorizontal! * 13,
          height: Dimensi.blockSizeVertical! * 8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: SmallText(
          text: name,
          spacing: 0.5,
          size: Dimensi.blockSizeVertical! * 2,
          color: ColorTheme.primaryColor,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(
              text: shortDesc,
              spacing: 0.5,
              size: Dimensi.blockSizeVertical! * 1.5,
            ),
            SmallText(
              text: "Rp. " + price.toString() + "/px",
              spacing: 0.5,
              size: Dimensi.blockSizeVertical! * 1.5,
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          color: ColorTheme.primaryColor,
          icon: Icon(Icons.info, size: Dimensi.blockSizeVertical! * 3),
        ),
      ),
    );
  }
}

class DressesContent extends StatelessWidget {
  const DressesContent({
    super.key,
    required this.img,
    required this.name,
    required this.shortDesc,
    required this.price,
    required this.isFavorite,
  });
  final String img;
  final String name;
  final String shortDesc;
  final int price;
  final Color isFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensi.blockSizeVertical! * 1,
      ),
      width: Dimensi.blockSizeHorizontal! * 9,
      height: Dimensi.blockSizeVertical! * 15,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
            topRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
            bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
            bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: Dimensi.blockSizeVertical! * 17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(Dimensi.blockSizeVertical! * 1),
                        topRight:
                            Radius.circular(Dimensi.blockSizeVertical! * 1),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            img,
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite,
                      size: 24.0,
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: Dimensi.blockSizeVertical! * 12.4,
              padding: EdgeInsets.all(Dimensi.blockSizeVertical! * 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensi.blockSizeVertical! * 1),
                bottomRight: Radius.circular(Dimensi.blockSizeVertical! * 1),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(
                    text: name,
                    color: ColorTheme.primaryColor,
                    spacing: 0.5,
                    fontStyle: FontStyle.italic,
                    size: Dimensi.blockSizeVertical! * 1.5,
                  ),
                  SizedBox(
                    height: Dimensi.blockSizeVertical! * 0.3,
                  ),
                  SmallText(
                    text: shortDesc,
                    size: Dimensi.blockSizeVertical! * 1.5,
                    spacing: 0.5,
                  ),
                  SizedBox(
                    height: Dimensi.blockSizeVertical! * 0.3,
                  ),
                  SmallText(
                    text: "Price : ",
                    spacing: 0.5,
                    size: Dimensi.blockSizeVertical! * 1.5,
                  ),
                  SmallText(
                    text: "Rp." + price.toString(),
                    textAlign: TextAlign.center,
                    spacing: 0.5,
                    size: Dimensi.blockSizeVertical! * 1.7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
