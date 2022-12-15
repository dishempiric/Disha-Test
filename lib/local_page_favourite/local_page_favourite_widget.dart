import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocalPageFavouriteWidget extends StatefulWidget {
  const LocalPageFavouriteWidget({Key? key}) : super(key: key);

  @override
  _LocalPageFavouriteWidgetState createState() =>
      _LocalPageFavouriteWidgetState();
}

class _LocalPageFavouriteWidgetState extends State<LocalPageFavouriteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF5CD5AE),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFF5F5F5),
            size: 24,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'nzwlegik' /* Favourite  Fruite List */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Builder(
                builder: (context) {
                  final favouriteNames = FFAppState().favouriteNames.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: favouriteNames.length,
                    itemBuilder: (context, favouriteNamesIndex) {
                      final favouriteNamesItem =
                          favouriteNames[favouriteNamesIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                favouriteNamesItem,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            if (FFAppState()
                                .favouriteNames
                                .contains(favouriteNamesItem))
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.favorite_sharp,
                                  color: Color(0xFFD91F1F),
                                  size: 30,
                                ),
                                onPressed: () async {
                                  setState(() {
                                    setState(() => FFAppState()
                                        .removeFromFavouriteNames(
                                            favouriteNamesItem));
                                  });
                                },
                              ),
                            if (!FFAppState()
                                .favouriteNames
                                .contains(favouriteNamesItem))
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xFFD91F1F),
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
