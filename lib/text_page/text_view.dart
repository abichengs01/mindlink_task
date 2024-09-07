import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../const/app_string.dart';
import '../const/images.dart';

class TextView extends StatefulWidget {
  const TextView({super.key});

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
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
              Text("Flutter Text ",style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),),
              InkWell(
                onTap: (){
                  Share.share('${AppString.shareUri}0', subject: 'Flutter Text!');
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
                image: DecorationImage(image: AssetImage(Images.text,),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12)

            ),),
          Spacer()

        ],
      ),
    );
  }
}
