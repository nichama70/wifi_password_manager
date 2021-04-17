/*import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_password_manager/bloc.navigationbloc/navigationbloc.dart';
import 'package:wifi_password_manager/test/Sidebar/menuitem.dart';

class SideBar extends StatefulWidget {

  @override
  _SideBarState createState() => _SideBarState();
}
//Creates Animations for Sidebar
class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedStreamController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);



  //Enables Sidebar to move
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSidebarOpenedSink = isSideBarOpenedStreamController.sink;
  }
  //Resets Sidebar to closed
  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    }else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  //Widget Creates Sidebar Panel
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
        initialData: false,
        stream: isSideBarOpenedStream,
        builder: (context, isSideBarOpenedAsync) {
          return AnimatedPositioned(
              duration: _animationDuration,
              top: 0,
              bottom: 0,
              left :isSideBarOpenedAsync.data ? 0 : -screenWidth,
              right: isSideBarOpenedAsync.data ? 0 : screenWidth - 45,
              child: Row(
                children: <Widget>[
                  Expanded (
                    child: Container(
                      color: Color(0xFF262AAA),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          ListTile(
                            title: Text(
                              "Main Menu",
                              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.perm_media,
                              ),
                              radius: 40,
                            ),
                          ),
                          Divider(
                            height: 64,
                            thickness: 0.5,
                            color: Colors.white.withOpacity(0.3),
                            indent: 32,
                            endIndent: 32,
                          ),
                          MenuItem(
                            icon: Icons.home,
                            title: "Dashboard",
                            onTap: () {
                              onIconPressed();
                              BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.DashboardClickEvent);
                            },
                          ),
                          MenuItem(
                            icon: Icons.admin_panel_settings,
                            title: "Network Settings",
                            onTap: () {
                              onIconPressed();
                              BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.NetworkSettingClickEvent);
                            },
                          ),
                          Divider(
                            height: 64,
                            thickness: 0.5,
                            color: Colors.white.withOpacity(0.3),
                            indent: 32,
                            endIndent: 32,
                          ),
                          MenuItem(
                            icon: Icons.settings,
                            title: "Settings",
                            onTap: () {
                              onIconPressed();
                              BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.SettingsClickEvent);
                            },
                          ),
                          MenuItem(
                            icon: Icons.exit_to_app,
                            title: "Logout",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment(0, -0.9),
                      child: GestureDetector(
                          onTap:() {
                            onIconPressed ();
                          },
                          child: Container(
                              width: 35,
                              height: 110,
                              color: Color(0xFF262AAA),
                              alignment: Alignment.centerLeft,
                              child: AnimatedIcon(
                                progress: _animationController.view,
                                icon: AnimatedIcons.menu_close,
                                color: Color(0XFF1BB5FD),
                                size: 25,
                              )
                          )
                      )
                  )
                ],
              )
          );
        }
    );
  }
}*/
