import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WandDataEntry(),
  ));
}

class WandDataEntry extends StatefulWidget {
  @override
  _WandDataEntryState createState() => _WandDataEntryState();
}

class _WandDataEntryState extends State<WandDataEntry> {
  final TextEditingController _coreController = TextEditingController();
  final TextEditingController _woodController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();

  List<Map<String, String>> _wandList = [];

  void _saveWandData() {
    final String core = _coreController.text;
    final String wood = _woodController.text;
    final String length = _lengthController.text;

    setState(() {
      _wandList.add({
        'core': 'Core: $core',
        'wood': 'Wood: $wood',
        'length': 'Length: $length',
      });
    });

    _coreController.clear();
    _woodController.clear();
    _lengthController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0,bottom: 20.0),
                  child: SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Color(0xFFA609F3),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              controller: _coreController,
              decoration: InputDecoration(
                labelText: 'Core',
                labelStyle: TextStyle(color: Color(0xFF9D8AA6)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA609F3)),
                ),
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _woodController,
              decoration: InputDecoration(
                labelText: 'Wood',
                labelStyle: TextStyle(color: Color(0xFF9D8AA6)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA609F3)),
                ),
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _lengthController,
              decoration: InputDecoration(
                labelText: 'Length',
                labelStyle: TextStyle(color: Color(0xFF9D8AA6)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFA609F3)),
                ),
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _saveWandData,
              child: Text(
                'Save',
                style:
                    TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA609F3),
              ),
            ),
            SizedBox(height: 50.0),
            Expanded(
              child: ListView.builder(
                itemCount: _wandList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${_wandList[index]['core']!}\n',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            TextSpan(
                              text:
                                  '${_wandList[index]['wood']}, ${_wandList[index]['length']}',
                              style: TextStyle(fontSize: 16.0,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _coreController.dispose();
    _woodController.dispose();
    _lengthController.dispose();
    super.dispose();
  }
}
