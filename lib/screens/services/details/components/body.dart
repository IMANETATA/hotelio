// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unused_import
import 'package:flutter/material.dart';
import 'package:hotelio/constants.dart';
import 'package:hotelio/screens/services/details/components/image_icons.dart';
import 'package:hotelio/screens/services/details/components/title_price.dart';
//import 'package:syncfusion_flutter_datepicker/datepicker.dart';


//import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';



class Body extends StatefulWidget {
  const Body({super.key});

  

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageandIcons(size: size),
            const TitleAndPrice(
              title: "Luxury",
              type: "Relax",
              price: 440,
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: kPrimaryLightColor,
                    ),
                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
  backgroundColor: Colors.white,
  title: const Text("Book Now", textAlign: TextAlign.center),
  content: const HomeScreen(),
  contentPadding:const EdgeInsets.all(16), 
  actions: [
    TextButton(
      onPressed: () {
        Navigator.pop(context); // Ferme la boîte de dialogue
      },
      child: const Text(
        "Cancel",
        style: TextStyle(color: Colors.black),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        // Traitez la logique de réservation ici
        
        Navigator.pop(context); // Ferme la boîte de dialogue
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
      ),
      child: const Text(
        "Book",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ],
);
  },
);
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? start;
  DateTime? end;
  int? numberOfRooms;
  int? numberOfPeople;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Pick Date",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          Text(start?.toIso8601String() ?? "-"),
          const Text("To"),
          Text(end?.toIso8601String() ?? "-"),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,),
            onPressed: () async {
              final result = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime.now().add(const Duration(days: 356)),
              );
              if (result != null) {
                setState(() {
                  start = result.start;
                  end = result.end;
                });
              }
            },
            child: const Text("Pick Date",style: TextStyle(
              color: Colors.white
            ),),
          ),
          TextField(
      decoration:const  InputDecoration(
      labelText: "Number of Rooms",
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
      setState(() {
        numberOfRooms = int.tryParse(value);
      });
      },
    ),
    TextField(
      decoration:const InputDecoration(
      labelText: "Number of People",
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
      setState(() {
        numberOfPeople = int.tryParse(value);
      });
      },
    ),
    const SizedBox(height: 16,),
    Text(
          "Number of Rooms: ${numberOfRooms ?? "-"}",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "Number of People: ${numberOfPeople ?? "-"}",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        ],
      ),
    );
  }
}

/*
class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  List<DateTime> selectedDates = [];
  DateFormat dateFormat = DateFormat("dd/MM/yyyy");

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      selectableDayPredicate: (DateTime date) {
        // Vous pouvez ajouter des conditions supplémentaires ici
        // pour définir les jours qui peuvent être sélectionnés.
        return true;
      },
    );
    if (picked != null && !selectedDates.contains(picked)) {
      setState(() {
        selectedDates.add(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choisir des dates'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child:const Text(
                'Sélectionner une date',
              ),
            ),
            const SizedBox(height: 16),
           const Text(
              'Dates sélectionnées:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: selectedDates.map((date) {
                return Chip(
                  label: Text(dateFormat.format(date)),
                  onDeleted: () {
                    setState(() {
                      selectedDates.remove(date);
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

*/



/*
class TimeDateView extends StatefulWidget {
  const TimeDateView({super.key});

  @override
  State<TimeDateView> createState() => _TimeDateViewState();
}

class _TimeDateViewState extends State<TimeDateView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _getRoomDateUI("choose date", "26 May - 31 May", () {
         // _showDemoDialog(context);
        },),
        _getRoomDateUI("Number Room", "2", () {
         // _showDemoDialog(context);
        }), 
        
      ],
    );
  }

  Widget _getRoomDateUI(String title, String subtitle, VoidCallback onTap) {
    return Expanded(
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 4,
                  bottom: 4,
                ),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16),
          ),
        ],

      ),
    );
  }*/
/*
  void _showDemoDialog(BuildContext context){
    showDialog(
    context: context,
    builder: (BuildContext context)=>CalenderPopView(
      
    )
    )
  }*/
/*}*/

/*
class CalenderPopView extends StatefulWidget {
  
  const CalenderPopView ({super.key, required this.minimumDate, required this.maximumDate, required this.barrierDissmissible, required this.initialStartDate, required this.initialEndDate, required this.onApplyClick, required this.onCancelClick});
  final DateTime minimumDate;
  final DateTime maximumDate;
  final bool barrierDissmissible;
  final DateTime initialStartDate;
  final DateTime initialEndDate;
  final Function(DateTime,DateTime) onApplyClick;
  final Function onCancelClick;
  @override
  State<CalenderPopView > createState() => _CalenderPopViewState();
}

class _CalenderPopViewState extends State<CalenderPopView > with TickerProviderStateMixin {
  late  AnimationController animationController;
  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(
      duration:const Duration(milliseconds: 400),vsync: this
    );
    //startDate=Widget.initialStartDate;
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


*/

/*
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageandIcons(size: size),
           const TitleAndPrice(
              title: "Luxury",
              type: "Relax",
              price: 440,
            ),
            const SizedBox(height:kDefaultPadding ,),
            Row(children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    ),
                  ),
                  backgroundColor: kPrimaryLightColor,
                ),
                child:const Text("Book Now",
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ) ,
                ) ,
                onPressed:(){

                }),
              ),
              Expanded(child: TextButton(
              onPressed:(){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0)
                    ),
                  ),
              ),
              child:const Text("Description",
              style:TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ) ,),
              ))
            ],),
          ],
        ),
      ),
    );
  }
}
*/