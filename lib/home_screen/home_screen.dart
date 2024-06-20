import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'home_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        elevation: 10,

        items:  [
          BottomNavigationBarItem(icon: Image.asset("assets/icons/mypodcast.png", color: Colors.black,), label: 'Home'),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/contacts.png",color: Colors.black,), label: 'Events'),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/add.png",color: Colors.black,), label: 'Calendar'),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/search.png",color: Colors.black,), label: 'Profile'),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/profile.png",color: Colors.black,), label: 'Profile'),
        ],

      ),


      body:   SingleChildScrollView(

        child: Column(
          children: [


            Container(

              // color: Colors.blue,
              // height: MediaQuery.of(context).size.height * 0.2,
              // width: MediaQuery.of(context).size.width * 1,
              child: Image.asset("assets/images/main_screen_top_image2.png"),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/icons/trending.svg", width: 80, height: 90,),
                SvgPicture.asset("assets/icons/interview.svg", width: 80, height: 90,),
                SvgPicture.asset("assets/icons/live.svg", width: 80, height: 90,),
                SvgPicture.asset("assets/icons/recording.svg", width: 80, height: 90,),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(children:

                  [SvgPicture.asset("assets/icons/vertical_line.svg", width: 20, height: 30,),

                    const SizedBox(width: 5,),
                    Text("Top Podcasts",

                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),)
              ]
              ,),


              ),
            ),

            SizedBox(
              height: 10,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: topPodcasts.map((podcast) => buildPodcastCard(podcast)).toList(),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(children:

                [SvgPicture.asset("assets/icons/vertical_line.svg", width: 20, height: 30,),

                  const SizedBox(width: 5,),
                  Text("Live",

                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),)
                ]
                  ,),


              ),
            ),            SizedBox(height: 10),
            Column(
              children: livePodcasts.map((livePodcast) => buildLivePodcastCard(livePodcast)).toList(),
            ),


          ],
        ),
      ),
    );


  }


  Widget buildPodcastCard(Podcast podcast) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(podcast.imageUrl, width: 100, height: 100),
        // SizedBox(height: 5),
        Text(podcast.title, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(podcast.publisher, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget buildLivePodcastCard(LivePodcast livePodcast) {
    return ListTile(

      leading: Image.asset(livePodcast.imageUrl, width: 100, height: 100),
      title: Text(livePodcast.title

      ,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,

        ),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(livePodcast.description),
          // SizedBox(height: 5),
          Row(
            children: [
              SvgPicture.asset('assets/icons/Group-1.svg', width: 20, height: 17,),
              Text('  ${livePodcast.category}',

                style: TextStyle(
                  fontWeight: FontWeight.normal,

                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SvgPicture.asset('assets/icons/Group.svg', width: 20, height: 17,),

              Text(' ${livePodcast.listeners}K'),
            ],
          ),

        ],
      ),
      // trailing: Icon(Icons.live_tv, color: Colors.red),
    );
  }


}
