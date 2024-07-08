import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_assistant_app/feature_box.dart';
import 'package:voice_assistant_app/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Luffy"),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [


          //virtual assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Container(
                height: 104,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                ),
              )
            ],
          ),

          //chat bubble
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 10
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(),
              color: Pallete.borderColor
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text("Good morning, what can I do for you?",style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 24
              ),),
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Here are a few features:",style: TextStyle(
                fontFamily: 'Cera Pro',
                color:Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),

          //features list
          Column(
            children: [
FeatureBox(color: Pallete.firstSuggestionBoxColor,
  headerText: 'ChatGPT',
  descriptionText: 'A smarter way to stay organized and informed with ChatGPT',),
              FeatureBox(color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dall-E',
                descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E',),

              FeatureBox(color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                descriptionText: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',),


            ],
          )

        ],
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
      child: Icon(Icons.mic),
      ) ,
    );
  }
}
