
import 'package:breakingbad_app/constants/mycolors.dart';
import 'package:breakingbad_app/layout/widget/character_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/Character.dart';
import '../../logic/cubit/characters_cubit.dart';

class caracters_screen extends StatefulWidget {
  const caracters_screen({ Key? key }) : super(key: key);

  @override
  State<caracters_screen> createState() => _caracters_screenState();
}

class _caracters_screenState extends State<caracters_screen> {
 late List<Character> allcharacters;
 @override
  void initState() {
    super.initState();
    allcharacters= BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       backgroundColor: MyColor.myYellow,
       title: Text('Characters',
           style: TextStyle(color: MyColor.myGray)),
     ) ,
     body: builderBlocWidget(),


   );
 }


 Widget builderBlocWidget() {
   return BlocBuilder<CharactersCubit, CharactersState>(
     builder: (context, state) {
       if(state is charatersLoaded){
         allcharacters =(state).characters;
         return buildLodedList();
       }else{
         return showLoadingIndicator();
       }

     },
   );
 }
 Widget showLoadingIndicator(){
   return Center(
     child: CircularProgressIndicator(
       color: MyColor.myYellow,
     ),
   );
 }

 Widget buildLodedList() {
   return SingleChildScrollView(
     child: Container(
       color: MyColor.myGray,
       child: Column(
         children: [
           buildCharacterList(),
         ],
       ),
     ),
   );
 }

 Widget buildCharacterList() {
   return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       childAspectRatio: 2/3,
       crossAxisSpacing: 1,
       mainAxisSpacing: 1
   ),
     shrinkWrap: true,
     physics: const ClampingScrollPhysics(),
     padding: EdgeInsets.zero,
     itemCount: allcharacters.length,
     itemBuilder: (ctx,index){

     return character_item(character: allcharacters[index],);
   },);

 }




}



