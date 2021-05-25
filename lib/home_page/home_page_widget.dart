import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: FFButtonWidget(
          onPressed: () async {
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginWidget(),
              ),
              (r) => false,
            );
          },
          text: 'Back to Login Page',
          options: FFButtonOptions(
            width: double.infinity,
            height: 40,
            color: FlutterFlowTheme.primaryColor,
            textStyle: FlutterFlowTheme.subtitle2.override(
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: 12,
          ),
        ),
      ),
    );
  }
}
