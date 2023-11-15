
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
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage != null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(_errorMessage ?? '', textAlign: TextAlign.center),
                        SizedBox(height: 32.0),
                        ElevatedButton(
                            onPressed: getWands, child: Text('Retry'))
                      ],
                    ),
                  ),
                )
              : _wands != null
                  ? ListView.builder(
                      itemCount: _wands!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Color(0xFFA609F3),
                          margin: EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      WandWoodCharacter(wand: _wands![index]),
                                ),
                              );
                            },
                            leading: Image.network(
                              _wands![index].image,
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                            title: Text(
                              _wands![index].core,
                              style: GoogleFonts.sourceSans3(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'information about the wand',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : SizedBox(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WandDataEntry(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
