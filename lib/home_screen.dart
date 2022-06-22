import 'package:flutter/material.dart';
import 'package:uptimer/location_screen.dart';

class HomeScreen extends StatefulWidget {
  final timeData;
  const HomeScreen({required this.timeData, Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? timezone;
  String? date;
  String? time;
  String? dayOfWeek;

  @override
  void initState() {
    updateUI();
    super.initState();
  }

  void updateUI() {
    setState(() {
      timezone = widget.timeData['timeZone'];
      date = widget.timeData['date'];
      time = widget.timeData['time'];
      dayOfWeek = widget.timeData['dayOfWeek'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/sunrise.jpg'),
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                MaterialButton(
                  elevation: 2,
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreen()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Text(
                      'Choose your location',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$timezone',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      child: Image.asset('images/lagos.jpg'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '$time',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 52,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '$dayOfWeek',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '$date',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
