// ignore: file_names
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;

  const LivePage({Key? key, required this.liveID, this.isHost = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID:
            1181261010, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            '528b76030ed05d1532d84b8bbe3e05203c98034f243a13d170837f536e08adfa', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'riyaz_01',
        userName: 'riyaz',
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
