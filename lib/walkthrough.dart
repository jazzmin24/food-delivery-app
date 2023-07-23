import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/auth/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({super.key});

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: GoogleFonts.alegreya(
                fontStyle: FontStyle.italic,
                fontSize: 50,
               
              )
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
              color: Colors.white,
              title: 'Create Your Own Plate',
              subtitle:
                  'Create unforegettable memories with our unique feature to curate your food, tailored to your specia occasion.',
              urlImage: '',
            ),
            buildPage(
              color: Colors.white,
              title: 'Equisite Catering',
              subtitle:
                  'Experience culinary artistry like never before with our innovative and equisite cuisine creations.',
              urlImage: '',
            ),
            buildPage(
              color: Colors.white,
              title: 'Personal Order Executive',
              subtitle:
                  'Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seemless and satisfying experience every step of the way. ',
              urlImage: '',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
            
              onPressed: () async {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => SignIn())); 
              }, 
              child: 
              Text('Get Started',
              style: GoogleFonts.alegreya(fontSize: 40, color: Colors.purple),
              
              ),
              style: ButtonStyle(alignment: Alignment.center),
              )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => controller.jumpToPage(2),
                      child: Text('Skip',
                      style: GoogleFonts.alegreya(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.w100
                      ),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
effect: WormEffect(activeDotColor: Colors.purple),
                        onDotClicked: (index) => controller.animateToPage(index,
                            duration: Duration(microseconds: 500),
                            curve: Curves.easeIn)),
                  ),
                  TextButton(
                      onPressed: () => controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Text('Next',
                      style: GoogleFonts.alegreya(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.w100
                      ),
                      )),
                ],
              ),
            ),
    );
  }
}
