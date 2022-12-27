import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocalPageWidget extends StatefulWidget {
  const LocalPageWidget({Key? key}) : super(key: key);

  @override
  _LocalPageWidgetState createState() => _LocalPageWidgetState();
}

class _LocalPageWidgetState extends State<LocalPageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
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
            '3vihnzxz' /* FruiteList */,
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
              context.pushNamed('LocalPageFavourite');
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
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
                  final cateNames =
                      FFAppState().CatNames.map((e) => e).toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: cateNames.length,
                    itemBuilder: (context, cateNamesIndex) {
                      final cateNamesItem = cateNames[cateNamesIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'LocalPageCopy',
                              queryParams: {
                                'title': serializeParam(
                                  cateNamesItem,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  valueOrDefault<String>(
                                    cateNamesItem,
                                    'CatName',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              if (FFAppState()
                                  .favouriteNames
                                  .contains(cateNamesItem))
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
                                    if (FFAppState()
                                        .favouriteNames
                                        .contains(cateNamesItem)) {
                                      FFAppState().update(() {
                                        FFAppState().removeFromFavouriteNames(
                                            cateNamesItem);
                                      });
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState()
                                            .addToFavouriteNames(cateNamesItem);
                                      });
                                    }
                                  },
                                ),
                              if (!FFAppState()
                                  .favouriteNames
                                  .contains(cateNamesItem))
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
                                  onPressed: () async {
                                    if (FFAppState()
                                        .favouriteNames
                                        .contains(cateNamesItem)) {
                                      FFAppState().update(() {
                                        FFAppState().removeFromFavouriteNames(
                                            cateNamesItem);
                                      });
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState()
                                            .addToFavouriteNames(cateNamesItem);
                                      });
                                    }
                                  },
                                ),
                            ],
                          ),
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
