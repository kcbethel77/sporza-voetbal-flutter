import 'package:flutter/material.dart';
import 'package:spv/model/view/view_models.dart';
import 'package:spv/ui/screen/calendar/live_designation.dart';

class MatchInfo extends StatelessWidget {
  final HeadingInfo info;

  const MatchInfo({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = Container();

    if (info is EndMatchHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as EndMatchHeadingInfo).score),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as EndMatchHeadingInfo).statusLabel),
          ),
          (info as EndMatchHeadingInfo).knockoutEnd == null
              ? Container()
              : Text((info as EndMatchHeadingInfo).knockoutEnd)
        ],
      );
    }

    if (info is SuspendedHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as SuspendedHeadingInfo).statusLabel),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as SuspendedHeadingInfo).score),
          )
        ],
      );
    }

    if (info is SuspendedIndefinitelyHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as SuspendedIndefinitelyHeadingInfo).statusLabel),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as SuspendedIndefinitelyHeadingInfo).score),
          )
        ],
      );
    }

    if (info is NotStartedHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as NotStartedHeadingInfo).statusDay),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as NotStartedHeadingInfo).statusLabel),
          )
        ],
      );
    }

    if (info is AfterTodayHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as AfterTodayHeadingInfo).statusDay),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as AfterTodayHeadingInfo).statusDate),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as AfterTodayHeadingInfo).statusLabel),
          )
        ],
      );
    }

    if (info is CancelledHeadingInfo) {
      widget = Center(child: Text((info as CancelledHeadingInfo).statusLabel));
    }

    if (info is LiveMatchHeadingInfo) {
      widget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LiveDesignation(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as LiveMatchHeadingInfo).score),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((info as LiveMatchHeadingInfo).statusLabel),
          )
        ],
      );
    }

    if (info is PostponedHeadingInfo) {
      widget = Center(child: Text((info as PostponedHeadingInfo).statusLabel));
    }

    if (info is DefaultHeadingInfo) {
      print("Could not render HeadingInfo: $info");
    }

    return widget;
  }
}
