import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'water_consume.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Custom
  List<WaterConsume> waterConsumeList = [];
  final TextEditingController _noOfGlassTEController =
      TextEditingController(text: '01');
  final TextEditingController _noteTEController =
      TextEditingController(text: 'Morning');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            'Water Tracker',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        if (_noOfGlassTEController.text.trim().isEmpty) {
                          _noOfGlassTEController.text = '1';
                        }
                        final noOfGlass = _noOfGlassTEController.text.trim();
                        // waterConsumeList.add(WaterConsume(1, DateTime.now()));
                        int glassCount = int.tryParse(noOfGlass) ?? 1;
                        //waterConsumeList.add(WaterConsume(glassCount, DateTime.now(),_noteTEController.text));
                        /// same to same
                        waterConsumeList.insert(
                            0,
                            WaterConsume(glassCount, DateTime.now(),
                                _noteTEController.text));
                        setState(() {});
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.blue, width: 4)),
                        alignment: Alignment.center,
                        child: const Text(
                          "Tap to count",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 100,
                            child: TextField(
                              controller: _noOfGlassTEController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                            width: 200,
                            child: TextField(
                              controller: _noteTEController,
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  //reverse: true,
                  itemCount: waterConsumeList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child:
                            Text(waterConsumeList[index].noOfGlass.toString()),
                      ),
                      title: Text(waterConsumeList[index].note),
                      //subtitle: Text('Time: ${waterConsumeList[index].time}'),

                        ///package:intl used
                      subtitle: Text('Time: ${DateFormat.yMEd().add_jms().format(waterConsumeList[index].time)}'),
                      trailing: IconButton(
                        onPressed: () {
                          waterConsumeList.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete_forever_rounded),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
