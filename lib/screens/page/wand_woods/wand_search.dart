import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/repositories/wand_repository.dart';
import 'package:harry_potter/screens/page/wand_woods/add_wand.dart';
import 'package:harry_potter/screens/page/wand_woods/wand_character.dart';

import '../../../models/wand.dart';

class WandWoodsSearch extends StatefulWidget {
  const WandWoodsSearch({Key? key});

  @override
  State<WandWoodsSearch> createState() => _WandWoodsSearchState();
}

class _WandWoodsSearchState extends State<WandWoodsSearch> {
  List<Wand>? _wands;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getWands();
  }

  Future<void> getWands() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2));

    try {
      var wands = await WandRepository().getWands();
      setState(() {
        _wands = wands;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildSuccess() => ListView(
          children: [
            Container(
              height: 120,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  'Wand Wood',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 95.0,
                      color: Color(0xFFA609F3),
                      fontFamily: 'HarryPotter'),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _wands!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 250.0,
                  child: Card(
                      color: Color(0xFFA609F3),
                      margin: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  WandWoodCharacter(wand: _wands![index]),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.network(
                                _wands![index].image,
                                fit: BoxFit.cover,
                                width: 200,
                                height: 200,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      _wands![index].core,
                                      style: GoogleFonts.sourceSans3(
                                        color: Colors.white,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'information about the wand',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                );
              },
            ),
          ],
        );

    buildLoadingOverlay() => Container(
          color: Colors.black.withOpacity(0.2),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );

    buildError() => Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getWands, child: Text('Retry'))
            ]),
          ),
        );

    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Stack(
        children: [
          if (_wands?.isNotEmpty ?? false) buildSuccess(),
          if (_errorMessage != null) buildError(),
          if (_isLoading) buildLoadingOverlay()
        ],
      ),
      floatingActionButton: (_wands?.isNotEmpty ?? false)? FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddWandPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ):null
    );
  }
}
