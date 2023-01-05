import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'LivePage.dart';

class HostLive extends StatelessWidget {
  const HostLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 7, 54, 182),
              Color.fromARGB(255, 4, 156, 222)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ElevatedButton(
                  onPressed: (() => jumpToLivePage(context, isHost: true)),
                  child: Text('Start the live stream'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 4, 4, 4),
                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  jumpToLivePage(BuildContext context, {required bool isHost}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LivePage(
          liveID: 'live_01',
          isHost: isHost,
        ),
      ),
    );
  }
}
