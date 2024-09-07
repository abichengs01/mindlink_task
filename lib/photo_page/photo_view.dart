import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mind_link_task/const/app_string.dart';
import 'package:mind_link_task/const/images.dart';
import 'package:share_plus/share_plus.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return  Padding(
      padding: const EdgeInsets.all( 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Flutter Image ",style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
               InkWell(
                 onTap: (){
                   Share.share('${AppString.shareUri}1', subject: 'Flutter Image!');
                 },
                 child: CircleAvatar(
                   radius: 20,
                   backgroundColor: theme.primaryColor.withOpacity(.1),
                 child: Icon(Icons.share),
                 ),
               ),

              ],
            ),Spacer(),
          Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Images.image,),fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(12)

            ),),
          Spacer()

        ],
      ),
    );
  }
}
