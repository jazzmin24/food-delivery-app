import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget category({
    required String urlImage,
    required String title,
  }) =>
      Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.network(urlImage),
            ),
            Expanded(
                child: Text(
              title,
              style: GoogleFonts.dosis(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ))
          ],
        ),
      );

  Widget dishes({
    required String urlImage,
    required String title,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 125,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(urlImage),
              ),
              Expanded(
                  child: Text(
                title,
                style: GoogleFonts.dosis(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ))
            ],
          ),
        ),
      );

  Widget services({
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: 275,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Expanded(flex: 2 ,child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(urlImage),
              )),
              Expanded(
                child:Text(title, style: GoogleFonts.dosis(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                 ),
                 Expanded(
                  child: Text(subtitle),
                 ),
                 SizedBox(height: 10,),
                  Expanded(
                child:Text('Know More', style: GoogleFonts.dosis(color: Colors.purple, fontWeight: FontWeight.bold),textAlign: TextAlign.end,),)
                
            ],
          ),
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [

Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Hi, Monica!', style: GoogleFonts.dosis(
                    fontSize: 30,
                    fontWeight:FontWeight.bold,
                    color: Colors.purple 
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Current location', style: TextStyle(color: Colors.grey),),
                   SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color:Colors.purple ),
                        Text('Hyderbad', 
                        style: GoogleFonts.dosis(
                          fontWeight: FontWeight.bold
                        ),
                        )
                    ],
                  ),
                ]
),
            Container(
              height: 150,

              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/grilled-meat-skewers-chicken-shish-kebab-with-zucchini-tomatoes-red-onions.jpg')),
                borderRadius: BorderRadius.circular(10),
              ),

// child: Row(
//                 children: [
//                   Expanded(
//                       child: Container(
//                     //  color: Colors.red,
//                     child: Column(
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 50, top: 50),
//                           child: Text(
//                             'Enjoy your first order,the taste of our delicious food!',
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 211, 211, 210),
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 200, top: 50),
//                           child: DottedBorder(
//                             color: const Color.fromARGB(255, 211, 211, 210),
//                             strokeWidth: 1,
//                             child: const Text(
//                               'FIRSTPLATE01',
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 211, 211, 210),
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 40),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//                   Expanded(
//                       child: Container(
//                           // color: Colors.blue,
//                           ))
//                 ],
//               ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Search food or events',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.purple,
                      ),
                      label: const Text(''),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                    )
                  ],
                )),

            const SizedBox(
              height: 10,
            ),
            Text(
              'Start Crafting',
              style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple),
            ),
            const SizedBox(
              height: 10,
            ),
           
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.asset('assets/SignInbg.jpg'
                          //    'https://takestwoeggs.com/wp-content/uploads/2021/06/Nem-Nu%CC%9Bo%CC%9B%CC%81ng-Cuon-Grilled-pork-spring-rolls-takestwoeggs-Final-1.jpg'
                              ),
                        ),
                        Expanded(
                            child: Text(
                          'Default Platters',
                          style: GoogleFonts.dosis(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                      ],
                    ),
                  )),
                  const SizedBox(width: 13),
                  Expanded(
                      child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                     border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.network('https://img.freepik.com/premium-vector/realistic-orange-juice-bottle-with-straw-without-lid-transparent-background_208581-858.jpg?w=1380'
                            //  'https://images.app.goo.gl/pj2onNrWoq3YqgFRA',
                              ),
                        ),
                        Expanded(
                            child: Text(
                          'Craft your own',
                          style: GoogleFonts.dosis(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                      ],
                    ),
                  )),
                ],
              ),
            ),

//green food plates

            Text(
              'Top Categories',
              style:
                  GoogleFonts.dosis(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  category(urlImage: 'https://img.freepik.com/premium-vector/realistic-orange-juice-bottle-with-straw-without-lid-transparent-background_208581-858.jpg?w=1380', title: 'Starters'),
                  category(
                      urlImage: 'https://images.app.goo.gl/7rhawvVyPJYHw3K39',
                      title: 'Drinks'),
                  category(urlImage: '', title: 'Rice'),
                  category(urlImage: '', title: 'Curry'),
                  category(urlImage: '', title: 'Dessert'),
                  category(urlImage: '', title: 'Vegtable'),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Starters",
                  style: GoogleFonts.dosis(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'More Starters',
                  style: GoogleFonts.dosis(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dishes(urlImage: '', title: 'Grill Chicken'),
                  dishes(urlImage: '', title: 'Mashroom Fry'),
                  dishes(urlImage: '', title: 'Veggies Fry'),
                  dishes(urlImage: '', title: 'Crispy corn'),
                  dishes(urlImage: '', title: 'Sesame Falafel'),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Maincourse",
                  style: GoogleFonts.dosis(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'More Main Courses',
                  style: GoogleFonts.dosis(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dishes(urlImage: '', title: 'Biryani'),
                  dishes(urlImage: '', title: 'Bread'),
                  dishes(urlImage: '', title: 'Plain Rice'),
                  dishes(urlImage: '', title: 'Chicken'),
                  dishes(urlImage: '', title: 'Veggie'),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              'Services',
              style:
                  GoogleFonts.dosis(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

services(urlImage: '', title: 'Signature', subtitle: 'information'),
services(urlImage: '', title: 'Signature', subtitle: 'information'),

                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              'How does it work?',
              style:
                  GoogleFonts.dosis(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          
            const SizedBox(
              height: 18,
            ),

            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(child: Container(child: Image.network(''), height: 150,)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Customise Menu',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Select items for a single event or multiple events', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                ],
              ),
            ),

SizedBox(
  height: 15,
),
          
          Container(
              height: 150,
              child: Row(
                children: [
                 
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Chooses Services',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Select the type of services from varying cutlery, mode of serving option, & more', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                     Expanded(child: Container(child: Image.network(''), height: 150,)),
                ],
              ),
            ),
          
           
SizedBox(
  height: 15,
),
            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(child: Container(child: Image.network(''), height: 150,)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dynamic Pricing',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Price per plate varies with number of items in a plate and number of plates selected', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                ],
              ),
            ),
SizedBox(
  height: 15,
),


           Container(
              height: 150,
              child: Row(
                children: [
                 
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Track Your Order',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Track the order status and seek help from the executives anytime', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                     Expanded(child: Container(child: Image.network(''), height: 150,)),
                ],
              ),
            ),


SizedBox(
  height: 15,
),
            Container(
              height: 150,
              child: Row(
                children: [
                  Expanded(child: Container(child: Image.network(''), height: 150,)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Taste Your Samples',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Explode your taste bud with samples of what you order(on request for eligible orders)', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                ],
              ),
            ),
 SizedBox(
  height: 15,
),

 Container(
              height: 150,
              child: Row(
                children: [
                 
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enjoy Food & Services',
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple
                          ),
                         // textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 15,),
                        Text('Enjoy event with delicious and customised food', style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,)
                      ],
                    )
                    
                    ),
                     Expanded(child: Container(child: Image.network(''), height: 150,)),
                ],
              ),
            ),

SizedBox(
  height: 25,
),

Text('Delicious food with professional service!', style: GoogleFonts.dosis(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

SizedBox(
  height: 25,
),



          ],
        ),
      ),
    );
  }
}
