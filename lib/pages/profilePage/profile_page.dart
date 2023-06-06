import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/widget/big_text.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/widget/divider_text.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/widget/small_text.dart';
import 'package:flutter/material.dart';

import '../../utils/dimention/dimentions.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorTheme.primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SmallText(
          text: "Profile",
          size: Dimensi.blockSizeVertical! * 2,
          color: Colors.white,
          spacing: 2,
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            IconButton(
              onPressed: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Wrap(
                        children: [
                          SizedBox(
                            width: Dimensi.blockSizeHorizontal! * 100,
                            height: Dimensi.blockSizeVertical! * 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: Dimensi.blockSizeHorizontal! * 100,
                                  height: Dimensi.blockSizeVertical! * 7,
                                  margin: EdgeInsets.only(
                                    left: Dimensi.blockSizeHorizontal! * 2,
                                    right: Dimensi.blockSizeHorizontal! * 2,
                                    top: Dimensi.blockSizeVertical! * 2,
                                  ),
                                  child: Center(
                                    child: SmallText(
                                      spacing: 1,
                                      size: Dimensi.blockSizeVertical! * 1.5,
                                      text: "PT. Kawan Sejati Indonesia",
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SmallText(
                                      spacing: 1,
                                      size: Dimensi.blockSizeHorizontal! * 3,
                                      text: "Alamat : ",
                                    ),
                                    SmallText(
                                      spacing: 1,
                                      size: Dimensi.blockSizeHorizontal! * 3,
                                      color: ColorTheme.primaryColor,
                                      text:
                                          "Kota Baru, Jl. Cihandap Indah No.190 Jawa Barat",
                                    ),
                                  ],
                                ),
                                Container(
                                  width: Dimensi.blockSizeHorizontal! * 100,
                                  height: Dimensi.blockSizeVertical! * 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          Dimensi.blockSizeVertical! * 2),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/banner/map.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                    left: Dimensi.blockSizeHorizontal! * 2,
                                    right: Dimensi.blockSizeHorizontal! * 2,
                                    top: Dimensi.blockSizeVertical! * 2,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensi.blockSizeVertical! * 1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Ok"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.info),
              color: Colors.grey,
              iconSize: Dimensi.blockSizeVertical! * 3,
            ),
            SmallText(
              text: "Love Wedding",
              size: Dimensi.blockSizeVertical! * 3,
              color: ColorTheme.primaryColor,
            ),
            Container(
              margin: EdgeInsets.only(
                top: Dimensi.blockSizeVertical! * 2,
                bottom: Dimensi.blockSizeVertical! * 2,
              ),
              width: Dimensi.blockSizeHorizontal! * 100,
              height: Dimensi.blockSizeVertical! * 15,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/banner/banner2.jpg",
                ),
              ),
            ),
            DividerText(text: "Origin Story"),
            _storyContainer(),
            DividerText(text: "Vision"),
            _visionContainer(),
            DividerText(text: "Mission"),
            _missionContainer(),
            SizedBox(height: Dimensi.blockSizeVertical! * 7),
          ],
        ),
      ),
    );
  }

  Container _storyContainer() {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensi.blockSizeHorizontal! * 2,
        right: Dimensi.blockSizeHorizontal! * 2,
        bottom: Dimensi.blockSizeVertical! * 2,
      ),
      width: double.infinity,
      height: Dimensi.blockSizeVertical! * 32,
      child: Center(
        child: BigText(
            text:
                "Perusahaan wedding planner ini awalnya didirikan oleh seorang pengusaha yang sekarang sebagai CEO bernama Adrian Maulana sukses yang memiliki latar belakang dalam bidang teknologi. Pada awalnya, perusahaan ini hanya berfokus pada penyediaan layanan dekorasi dan katering untuk acara pernikahan. Namun, seiring berjalannya waktu, perusahaan ini mulai menambahkan layanan tambahan seperti penataan bunga, fotografi dan video, serta entertainment untuk acara pernikahan. Dengan semakin berkembangnya bisnis ini, perusahaan ini mulai menawarkan layanan wedding planner lengkap yang mencakup segala hal yang dibutuhkan oleh pasangan pengantin dalam merencanakan dan mengatur acara pernikahan mereka. Hingga saat ini, perusahaan ini telah melayani ratusan pasangan pengantin dari berbagai kalangan dan menjadi salah satu perusahaan wedding planner terkemuka di kota tersebut."),
      ),
    );
  }

  Container _visionContainer() {
    return Container(
      width: double.infinity,
      height: Dimensi.blockSizeVertical! * 10,
      margin: EdgeInsets.only(
        left: Dimensi.blockSizeHorizontal! * 2,
        right: Dimensi.blockSizeHorizontal! * 2,
        bottom: Dimensi.blockSizeVertical! * 2,
      ),
      decoration: BoxDecoration(
        color: ColorTheme.bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimensi.blockSizeVertical! * 1),
        ),
      ),
      child: BigText(
        text:
            "Menjadi perusahaan wedding planner terkemuka dan terpercaya di Indonesia dengan memberikan pengalaman pernikahan yang tak terlupakan bagi pasangan pengantin.",
        size: Dimensi.blockSizeVertical! * 1.5,
        color: ColorTheme.primaryColor,
      ),
    );
  }

  Container _missionContainer() {
    return Container(
      width: double.infinity,
      height: Dimensi.blockSizeVertical! * 35,
      margin: EdgeInsets.only(
        left: Dimensi.blockSizeHorizontal! * 2,
        right: Dimensi.blockSizeHorizontal! * 2,
        bottom: Dimensi.blockSizeVertical! * 2,
      ),
      decoration: BoxDecoration(
        color: ColorTheme.bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimensi.blockSizeVertical! * 1),
        ),
      ),
      child: BigText(
        text:
            "1. Menyediakan layanan pernikahan yang profesional dan berkualitas tinggi untuk memastikan setiap pasangan pengantin mendapatkan pengalaman pernikahan yang tak terlupakan.Membantu pasangan pengantin dalam merencanakan dan mengatur acara pernikahan mereka dari awal hingga akhir.\n2. Menjalin kerjasama yang baik dengan vendor terkait untuk memberikan layanan pernikahan yang lebih baik dan efisien.\n3. Memberikan pelayanan yang ramah dan sopan kepada semua klien, serta memberikan solusi terbaik untuk setiap kebutuhan dan keinginan pasangan pengantin.\n4. Mempertahankan standar kualitas yang tinggi dalam setiap layanan pernikahan yang diberikan untuk mencapai kepuasan maksimal dari klien.",
        size: Dimensi.blockSizeVertical! * 1.5,
        color: ColorTheme.primaryColor,
      ),
    );
  }
}
