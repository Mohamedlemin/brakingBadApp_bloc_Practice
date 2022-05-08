import 'package:breakingbad_app/constants/mycolors.dart';
import 'package:breakingbad_app/data/model/Character.dart';
import 'package:flutter/material.dart';
class character_item extends StatelessWidget {
  final Character character;
  const character_item({Key? key,required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsetsDirectional.fromSTEB(8,8,8,8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColor.myWhite,
        borderRadius: BorderRadius.circular(8)
      ),
      child: GridTile(
        child: Container(
          color: MyColor.myGray,
          child: character.image.isNotEmpty ?
          FadeInImage.assetNetwork(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              placeholder: 'assets/images/loading.gif',
              image: character.image
          ):Image.asset('assets/images/loading.gif')
        ),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          alignment: Alignment.bottomCenter,
          color: Colors.black54,
          child: Text('${character.name}',
          style: TextStyle(
            height: 1.3,
            fontSize: 16,
            color: MyColor.myWhite,
            fontWeight: FontWeight.bold

          ),
          overflow: TextOverflow.ellipsis,
          maxLines:2 ,
          textAlign: TextAlign.center,),
        ),
      ),

    );
  }
}
