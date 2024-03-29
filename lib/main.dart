import 'dart:math';
import 'package:animated_web_app/info_palette.dart';
import 'package:animated_web_app/src/footer.dart';
import 'package:animated_web_app/src/header.dart';
import 'package:animated_web_app/src/profileTile.dart';
import 'package:animated_web_app/src/profile_image.dart';
import 'package:animated_web_app/src/testimonial.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_list_view/smooth_list_view.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SmoothListView(
            controller: _controller,
            duration: const Duration(milliseconds: 250),
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 600.0,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Transform(
                                  transform: Matrix4.rotationZ(pi / 6)
                                    ..translate(-180.0, 170.0),
                                  child: Container(
                                    height: 350.0,
                                    width: 700.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius:
                                          BorderRadius.circular(300.0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 200.0,
                                  left: 100.0,
                                  child: Container(
                                    height: 400.0,
                                    width: 400.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Manage all your',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 38.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'projects in one place.',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Container(
                                          width: 300,
                                          child: Text(
                                            'Describe your project and find a top talent team around the world or near you. Leave your E-mail to',
                                            style: GoogleFonts.nunito(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 45.0,
                                              width: 230.0,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    hintText:
                                                        'Enter your email address',
                                                    hintStyle:
                                                        GoogleFonts.nunito(
                                                      fontSize: 12.0,
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    )),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20.0,
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black87,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  )),
                                              onPressed: () {},
                                              child: Container(
                                                height: 45.0,
                                                width: 100.0,
                                                child: Center(
                                                  child: Text(
                                                    'Get Invite',
                                                    style: GoogleFonts.nunito(
                                                        color: Colors.white,
                                                        fontSize: 13.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 600.0,
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ProfileImage(
                                  top: 140.0,
                                  left: 90.0,
                                  diameter: 200.0,
                                  image:
                                      'https://as1.ftcdn.net/v2/jpg/03/98/19/92/1000_F_398199261_qWlRcW5Ylu6nYVvSC4IloPmj6ApbBqvs.jpg',
                                ),
                                ProfileImage(
                                  top: 160.0,
                                  left: 300.0,
                                  diameter: 100.0,
                                  image:
                                      'https://as1.ftcdn.net/v2/jpg/03/98/19/92/1000_F_398199261_qWlRcW5Ylu6nYVvSC4IloPmj6ApbBqvs.jpg',
                                ),
                                ProfileImage(
                                  top: 275.0,
                                  left: 280.0,
                                  diameter: 280.0,
                                  image:
                                      'https://as1.ftcdn.net/v2/jpg/03/98/19/92/1000_F_398199261_qWlRcW5Ylu6nYVvSC4IloPmj6ApbBqvs.jpg',
                                ),
                                ProfileImage(
                                  top: 360.0,
                                  left: 90.0,
                                  diameter: 170.0,
                                  image:
                                      'https://as1.ftcdn.net/v2/jpg/03/98/19/92/1000_F_398199261_qWlRcW5Ylu6nYVvSC4IloPmj6ApbBqvs.jpg',
                                ),
                                ProfileTile(
                                  top: 380,
                                  left: 50.0,
                                  title: 'I am Gonna give u Color theory',
                                  subTitle: 'Shravan, Designer',
                                  factor: 0.5,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Header(),
                    ],
                  ),

//new lines

                  Container(
                    height: 400.0,
                    width: double.infinity,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          right: -200.0,
                          child: Container(
                            height: 330.0,
                            width: 430.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(300.0),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'How it works',
                              style: GoogleFonts.nunito(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedOpacity(
                                  opacity: pixels >= 100 ? 1.0 : 0.0,
                                  duration: const Duration(milliseconds: 500),
                                  child: AnimatedPadding(
                                    duration: const Duration(milliseconds: 500),
                                    padding: EdgeInsets.only(
                                        left: pixels >= 100 ? 0.0 : 500.0),
                                    child: InfoPalette(
                                      title: 'Community',
                                      text:
                                          'Communicate with colleagues, share ideas, find a team in a project in one space.',
                                      icon: Icons.people_rounded,
                                    ),
                                  ),
                                ),
                                InfoPalette(
                                  title: 'Overview Reports',
                                  text:
                                      'Track your progress thanks to the reporting system right inside the platform.',
                                  icon: Icons.pie_chart_rounded,
                                ),
                                InfoPalette(
                                  title: 'Dashboard',
                                  text:
                                      'Manage your projects and tasks by tracking activity on the dashboard.',
                                  icon: Icons.person_rounded,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 60.0,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                primary: Colors.black87,
                                padding: const EdgeInsets.all(0.0),
                              ),
                              onPressed: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                  vertical: 8.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(
                                    // color: Colors.grey[800],
                                    color: Colors.grey,
                                  ),
                                ),
                                child: Text(
                                  'Explore More',
                                  style: GoogleFonts.nunito(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -250.0,
                          child: Container(
                            height: 450.0,
                            width: 700.0,
                            decoration: BoxDecoration(
                              color: Colors.amber[400],
                              borderRadius: BorderRadius.circular(400.0),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 500),
                          top: 20.0,
                          left: pixels >= 500 ? 100.0 : 0.0,
                          child: Container(
                            height: 400.0,
                            width: 700.0,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // child: Image.network(
                            //   'https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png',
                            //   fit: BoxFit.cover,
                            // )
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const ProfileTile(
                          left: 80.0,
                          top: -10.0,
                          title: 'Send a final design to the team',
                          subTitle: 'Sara, Client',
                          factor: 1.0,
                        ),
                        const ProfileTile(
                          left: 620.0,
                          top: 400.0,
                          title: 'Publish Your project whenever you want',
                          subTitle: 'Micheal',
                          factor: 1.0,
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 500),
                          right: pixels >= 600 ? 100.0 : 0.0,
                          top: 150.0,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: pixels >= 600 ? 1.0 : 0.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Easy Project Management',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  width: 280.0,
                                  child: Text(
                                    'Manage your project, Organize your own workspace, keep statistics and collaborate with your teammates in one place',
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    backgroundColor: Colors.grey[900],
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 50.0,
                                      vertical: 20.0,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Try for free',
                                    style: GoogleFonts.nunito(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 600.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Align(
                          child: Column(
                            children: [
                              Text(
                                'Be in the community',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Meet New people and leave testimonials about your teammates',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AnimatedAlign(
                          duration: const Duration(milliseconds: 500),
                          alignment: pixels >= 1200
                              ? Alignment(0.0, 0.0)
                              : Alignment(-0.2, 0.0),
                          child: AnimatedOpacity(
                            opacity: pixels >= 1200 ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 500),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: -70.0,
                                        top: -60.0,
                                        child: Icon(
                                          Icons.format_quote,
                                          color: Colors.grey[300],
                                          size: 150.0,
                                        ),
                                      ),
                                      Text(
                                        'Excellent',
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    width: 360.0,
                                    child: Text(
                                      'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'Comment detail',
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Container(
                                    height: 1.5,
                                    width: 100.0,
                                    color: Colors.black87,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TestimonialTile(
                          image:
                              'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
                          left: 780.0,
                          top: pixels >= 1000 ? 100.0 : 130.0,
                          leftalign: false,
                        ),
                        TestimonialTile(
                          image:
                              'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
                          left: 840.0,
                          top: pixels >= 1200 ? 400.0 : 430.0,
                          leftalign: false,
                        ),
                        TestimonialTile(
                          image:
                              'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
                          left: 440.0,
                          top: pixels >= 1300 ? 450.0 : 480.0,
                          leftalign: true,
                        ),
                        Positioned(
                          right: 350.0,
                          top: 200.0,
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: Colors.red[600],
                              borderRadius: BorderRadius.circular(60.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                          ),
                        ),

                        //rest two also same only positions and size and color changes....
                        Positioned(
                          right: 200.0,
                          top: 250.0,
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(60.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 250.0,
                          top: 450.0,
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xff373e98),
                              borderRadius: BorderRadius.circular(60.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0),
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600.0,
                    color: const Color(0xff373e98),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        AnimatedAlign(
                          duration: const Duration(milliseconds: 500),
                          alignment: pixels >= 1600
                              ? Alignment(0.0, 1.0)
                              : Alignment(-0.2, 1.0),
                          child: AnimatedOpacity(
                            opacity: pixels >= 1600 ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 500),
                            child: Container(
                              height: 600.0,
                              width: 400.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 80.0,
                                  ),
                                  Text(
                                    'Get Started Today',
                                    style: GoogleFonts.josefinSans(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.0,
                                      fontSize: 35.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    'Freelancer - Community of people who values their time',
                                    style: GoogleFonts.nunito(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            backgroundColor: Colors.white,
                                            padding: const EdgeInsets.all(0.0),
                                          ),
                                          onPressed: () {},
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0,
                                              vertical: 12.0,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Text(
                                              'Get My Price',
                                              style: GoogleFonts.josefinSans(
                                                color: const Color(0xff373e98),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          //color: Colors.white,
                                          padding: const EdgeInsets.all(0.0),
                                        ),
                                        onPressed: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0,
                                            vertical: 12.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Text(
                                            'Try for free',
                                            style: GoogleFonts.josefinSans(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Footer(),
                        ),
                        Align(
                          alignment: const Alignment(1.18, 0.0),
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.amber[400],
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  offset: Offset(0.0, 5.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

//end new lines
                ],
              ),
            ]),
      ),
    );
  }
}
