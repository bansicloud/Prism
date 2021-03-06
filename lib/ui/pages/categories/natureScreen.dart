import 'package:Prism/data/pexels/provider/pexels.dart';
import 'package:Prism/routes/router.dart';
import 'package:Prism/ui/widgets/home/gridLoader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NatureScreen extends StatelessWidget {
  NatureScreen({
    Key key,
  }) : super(key: key);

  Future<bool> onWillPop() async {
    navStack.removeLast();
    print(navStack);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: GridLoader(
        future: Provider.of<PexelsProvider>(context, listen: false)
            .getNatureWalls(),
        provider: "Pexels",
      ),
    );
  }
}
