import 'package:flutter/material.dart';
import 'package:harry_potter/repositories/wand_repository.dart';
import 'package:harry_potter/screens/page/wand_woods/wand_search.dart';

class AddWandPage extends StatefulWidget {
  static const routeName = 'add_wand';

  const AddWandPage({super.key});

  @override
  State<AddWandPage> createState() => _AddWandPageState();
}

class _AddWandPageState extends State<AddWandPage> {
  var _isLoading = false;
  //String? _errorMessage;

  final _coreController = TextEditingController();
  final _woodController = TextEditingController();
  final _lengthController = TextEditingController();

  validateForm() {
    return _coreController.text.isNotEmpty &&
        _woodController.text.isNotEmpty &&
        _lengthController.text.isNotEmpty;
  }

  addWand() async {
    setState(() {
      _isLoading = true;
      //_errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2));

    try {
      var core = _coreController.text;
      var wood = _woodController.text;
      var length = _lengthController.text;

      await WandRepository().addWand(
          core: core,
          wood: wood,
          length: length,
          image:
              "https://png.pngtree.com/png-vector/20190802/ourlarge/pngtree-magic-wand-icon-png-image_1652859.jpg");

      if (mounted) Navigator.pop(context);
    } catch (e) {
      setState(() {
        //_errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    handleClickSave() {
      if (validateForm()) {
        addWand();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WandWoodsSearch(),
          ),
        );
      }
    }

    buildForm() => SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
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
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: handleClickSave,
                      child: Text('Add Wand',style:
                      TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFA609F3),
                    ),
                ),
                ),
              ],
            )));

    return Scaffold(
        backgroundColor: Color(0xFF1B1828),
        appBar: AppBar(title: Text('',style: TextStyle(
          color: Colors.white
          ),
        ),backgroundColor:Color(0xFFA609F3),),
        body: Stack(
          children: [
            buildForm(),
            if (_isLoading) buildLoadingOverlay(),
          ],
        ));
  }
}
