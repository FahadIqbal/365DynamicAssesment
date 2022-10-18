import 'package:flutter/material.dart';
import 'package:assesment_365/models/account_model.dart';
import 'package:assesment_365/services/api_service.dart';

import 'DetailPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Value>? _valueModel = [];
  late List<Value>?  _foundAccounts = [];
  late String codeDialog = '0';
  late String stateCode = '';
  late String countryCode;
  TextEditingController _controller = TextEditingController();


  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _valueModel = (await ApiService().getAccounts())!;
    _foundAccounts = _valueModel;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  void _getFilteredData(String type) async {
    _valueModel = (await ApiService().getFilteredRecord(type))!;
    _foundAccounts = _valueModel;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent Ready Assessment'),
      ),
      body: _valueModel == null || _valueModel!.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),

      )
      :Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child:TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search'
              ),
            )),
            IconButton(
                icon: const Icon(
                  Icons.filter_alt,
                ),
                onPressed: (){

                  _settingModalBottomSheet(context);
                //  _displayTextInputDialog(context);

                }
            )]),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundAccounts!.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundAccounts?.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundAccounts![index].name),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: const ImageIcon(
                      AssetImage("images/accounts.png"),
                      size: 80,
                    ),
                    title: Text(_foundAccounts![index].name.toString()),
                    subtitle: Text(
                        '${_foundAccounts![index].accountnumber}\n${_foundAccounts![index].emailaddress1}',
                  ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                              item: _foundAccounts![index],
                              title: _foundAccounts![index].name.toString()),
                        ),
                      );
                    },
                ),
              ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }


  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Value>? results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _valueModel;
    } else {
      results = _valueModel
          ?.where((account) =>
      account.name.toString().toLowerCase().contains(
          enteredKeyword.toLowerCase()) ||
          account.accountnumber.toString().toLowerCase().contains(
              enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    // Refresh the UI
    setState(() {
      _foundAccounts = results;
    });
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;
          return AlertDialog(
            title: Text('Select Filter Type'),

            content:
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      child:TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                            setState(() {
                            stateCode = value;
                            });
                            },
                        decoration: const InputDecoration(
                            labelText: 'Enter State Code'
                        ),
                      )),
                  Flexible(child:  TextField(
                    onChanged: (value) {
                      setState(() {
                        countryCode = value;
                      });
                    },
                    controller: _controller,
                    decoration: const InputDecoration(hintText: "Enter State Or Province"),
                  ),),
          Expanded(child:
          MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text('Apply'),
                    onPressed: () {
                      setState(() {
                        // codeDialog = valueText;
                        var input = '';
                        if (stateCode.isNotEmpty) {
                          input = "?\$filter=statecode eq $stateCode";
                        } else {
                          input = '?\$filter=contains(address1_stateorprovince,$countryCode)';
                        }
                        _getFilteredData(input);
                        Navigator.pop(context);
                      });
                    },
                  ),
          ),
                 ]),


          );
        });
  }


  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Wrap(
            spacing: 18.0, // gap between adjacent chips
            runSpacing: 4.0,
            alignment: WrapAlignment.center,
            children: <Widget>[
          Column(
          children:[
            const SizedBox(
              height: 20,
            ),
          SizedBox( // <-- SEE HERE
          width: MediaQuery.of(context).size.height * .65,
          child:
          const Text('Please Add State Code or State Country for Filter',style: TextStyle(fontSize: 20))
          ),
          SizedBox( // <-- SEE HERE
          width: MediaQuery.of(context).size.height * .65,
          child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    stateCode = value;
                  });
                },
                decoration: const InputDecoration(
                    labelText: 'Enter State Code'
                ),
              ),
          ),
          SizedBox( // <-- SEE HERE
          width: MediaQuery.of(context).size.height * .65,
          child: TextField(
                onChanged: (value) {
                  setState(() {
                    countryCode = value;
                  });
                },
                controller: _controller,
                decoration: const InputDecoration(hintText: "Enter State Or Province"),
              ),
          ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.green,
                textColor: Colors.white,
                child: const Text('  Apply  '),
                onPressed: () {
                  setState(() {
                    // codeDialog = valueText;
                    var input = '';
                    if (stateCode.isNotEmpty) {
                      input = "?\$filter=statecode eq $stateCode";
                    } else {
                      input = '?\$filter=contains(address1_stateorprovince,$countryCode)';
                    }
                    _getFilteredData(input);
                    Navigator.pop(context);
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
        ],
          )
          ]
          );
        }
    );
  }

}

