import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirebasePageWidget extends StatefulWidget {
  const FirebasePageWidget({Key? key}) : super(key: key);

  @override
  _FirebasePageWidgetState createState() => _FirebasePageWidgetState();
}

class _FirebasePageWidgetState extends State<FirebasePageWidget> {
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
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'x8v4hmlx' /* FirebaseFruiteList */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.favorite,
              color: Color(0xFFD91F1F),
              size: 30,
            ),
            onPressed: () async {
              context.pushNamed('FirebasePageFavouritePage');
            },
          ),
        ],
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
              child: StreamBuilder<List<FruiteNamesRecord>>(
                stream: queryFruiteNamesRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitRipple(
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<FruiteNamesRecord> listViewFruiteNamesRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewFruiteNamesRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewFruiteNamesRecord =
                          listViewFruiteNamesRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                listViewFruiteNamesRecord.name!,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                final fruiteNamesUpdateData = {
                                  'is_favourite':
                                      !listViewFruiteNamesRecord.isFavourite!,
                                };
                                await listViewFruiteNamesRecord.reference
                                    .update(fruiteNamesUpdateData);
                              },
                              value: listViewFruiteNamesRecord.isFavourite!,
                              onIcon: Icon(
                                Icons.favorite_sharp,
                                color: Color(0xFFE11717),
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.favorite_border,
                                color: Color(0xFFE11717),
                                size: 25,
                              ),
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
