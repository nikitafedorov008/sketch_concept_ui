import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/sliding_app_bar.dart';

class PaintPage extends StatefulWidget {
  PaintPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaintPageState createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> with SingleTickerProviderStateMixin {

  bool _visible = true;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
  }

  //void for choosing body view for any kind of device (except for the smartwatch or tv or smth else)
  responsiveBody(orientation, constraints) {
    //double breakpointWidth = orientation == Orientation.portrait ? 200 : 400;
    double breakpointWidth = orientation == Orientation.portrait ? 600 : 800;
    if (constraints.maxWidth >= breakpointWidth) {
      return tabletBody();
    }  else if (constraints.maxWidth < breakpointWidth) {
      return phoneBody();
    } else {
      return phoneBody();
    }
  }

  //Windows/Mac/Linux
  Widget desktopBody() {
    return Column(
      children: [
        SlidingAppBar(
          controller: _controller,
          visible: _visible,
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.blueGrey[100],
            title: Container(
              //color: Colors.blueGrey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Ionicons.pencil_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.pen);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.brush_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.marker);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.ban_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.eraser);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.balloon_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.lasso);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.camera_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.image);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.hand_left_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.hand);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.18,
          width: MediaQuery.of(context).size.width / 1.05,
          color: Colors.grey,
          child: Center(child: Text('drawing zone (desktop view)')),
        ),
      ],
    );
  }

  //AndroidTablet/IPad
  Widget tabletBody() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SlidingAppBar(
            controller: _controller,
            visible: _visible,
            child: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
              ),
              elevation: 1,
              backgroundColor: Colors.blueGrey[100],
              title: Container(
                //color: Colors.blueGrey[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Ionicons.clipboard_outline, color: Colors.black54,),
                      onPressed: () {},
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      height: 40,
                      width: 2,
                      color: Colors.black45,
                    ),
                    IconButton(
                      icon: Icon(Ionicons.pencil_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.pen);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.brush_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.marker);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.ban_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.eraser);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.balloon_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.lasso);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.camera_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.image);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.image_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.hand);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.text_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.hand);
                      },
                    ),
                    IconButton(
                      icon: Icon(Ionicons.hand_left_outline, color: Colors.black54,),
                      onPressed: () {
                        //state.changeSelectedTool(Tools.hand);
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      height: 40,
                      width: 2,
                      color: Colors.black45,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        minWidth: 30,
                        height: 30,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        minWidth: 30,
                        height: 30,
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        minWidth: 30,
                        height: 30,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        //padding: const EdgeInsets.all(8.0),
                        height: 2,
                        width: 30,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        //padding: const EdgeInsets.all(8.0),
                        height: 6,
                        width: 30,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        //padding: const EdgeInsets.all(8.0),
                        height: 10,
                        width: 30,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.18,
          width: MediaQuery.of(context).size.width / 1.05,
          color: Colors.grey,
          child: Center(child: Text('drawing zone (tablet view)')),
        ),
      ],
    );
  }

  //Android/Ios
  Widget phoneBody() {
    return Column(
      children: [
        SlidingAppBar(
          controller: _controller,
          visible: _visible,
          child: AppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            elevation: 1,
            backgroundColor: Colors.blueGrey[100],
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Ionicons.clipboard_outline, color: Colors.black54,),
                    onPressed: () {},
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    height: 40,
                    width: 2,
                    color: Colors.black45,
                  ),
                  IconButton(
                    icon: Icon(Ionicons.pencil_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.pen);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.brush_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.marker);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.ban_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.eraser);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.balloon_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.lasso);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.camera_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.image);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.image_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.hand);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.text_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.hand);
                    },
                  ),
                  IconButton(
                    icon: Icon(Ionicons.hand_left_outline, color: Colors.black54,),
                    onPressed: () {
                      //state.changeSelectedTool(Tools.hand);
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    height: 40,
                    width: 2,
                    color: Colors.black45,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      minWidth: 30,
                      height: 30,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      minWidth: 30,
                      height: 30,
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      minWidth: 30,
                      height: 30,
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      //padding: const EdgeInsets.all(8.0),
                      height: 2,
                      width: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      //padding: const EdgeInsets.all(8.0),
                      height: 6,
                      width: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      //padding: const EdgeInsets.all(8.0),
                      height: 10,
                      width: 30,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.18,
          width: MediaQuery.of(context).size.width / 1.05,
          color: Colors.grey,
          child: Center(child: Text('drawing zone (phone view)')),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        bottomOpacity: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Ionicons.close_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Ionicons.grid_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Ionicons.return_up_back_outline),
              color: Colors.grey,
              onPressed: () {},
            ),
            Text('GoodNote', style: TextStyle(fontWeight: FontWeight.w300),),
            IconButton(
              icon: Icon(Ionicons.return_up_forward_outline),
              color: Colors.grey,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Ionicons.save_outline),
              onPressed: () {
                //state.saveToSvg();
              },
            ),
            PopupMenuButton(
              child: Center(child: Icon(Ionicons.ellipsis_vertical_outline)),
              itemBuilder: (_) => [
                PopupMenuItem(
                  value: "/settings",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Ionicons.settings_outline, color: Colors.grey,),
                      Text('Settings'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "/aboutapp",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Ionicons.apps_outline, color: Colors.grey,),
                      Text('About'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => setState(() => _visible = !_visible),
            icon: Icon(_visible ? Icons.arrow_circle_up_sharp : Icons.arrow_circle_down_sharp,),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              return responsiveBody(orientation, constraints);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _visible = !_visible),
        child: Icon(_visible ? Icons.arrow_circle_up_sharp : Icons.arrow_circle_down_sharp,),
      ),
    );
  }
}