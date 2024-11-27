import 'package:cocoicons/cocoicons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:mobile_invoicing_app/screens/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // ignore: unused_field
  int _selectedIndex = 0; // Indice de l'élément sélectionné

  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Met à jour l'indice sélectionné
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/img/logo2.jpg'),
          backgroundColor: const Color(0xffecf0f1),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                print('Recherche pressée');
              },
            ),
          ],
        ),
        backgroundColor: const Color(0xffecf0f1),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text('Overview',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'kontora-semi-bold',
                      )),
                  Spacer(),
                  Icon(
                    Icons.keyboard_control_sharp,
                    color: Colors.grey,
                    size: 30,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 220, // Taille maximale du conteneur
                    width: 250, // Largeur fixe
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '€53.200',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Received',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8), // Espacement
                        Expanded(
                          // Laisser le graphique occuper l'espace restant
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(show: false),
                                borderData: FlBorderData(show: false),
                                titlesData: FlTitlesData(
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      getTitlesWidget: (value, meta) {
                                        switch (value.toInt()) {
                                          case 0:
                                            return const Text('Aug');
                                          case 1:
                                            return const Text('Sep');
                                          case 2:
                                            return const Text('Oct');
                                          case 3:
                                            return const Text('Nov');
                                          case 4:
                                            return const Text('Dec');
                                          default:
                                            return const Text('');
                                        }
                                      },
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 1.5),
                                      FlSpot(1, 1.7),
                                      FlSpot(2, 1.4),
                                      FlSpot(3, 2.1),
                                      FlSpot(4, 1.8),
                                    ],
                                    isCurved: true,
                                    color: Colors.green,
                                    barWidth: 3,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: true,
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.green.withOpacity(0.1),
                                          Colors.green.withOpacity(0.0),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('12',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'kontora-semi-bold',
                                    fontSize: 30)),
                            Text('Pending',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('05',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'kontora-semi-bold',
                                    fontSize: 30)),
                            Text('Unpaid',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff07313a),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Upgrade to Entrepise',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'kontora-semi-bold',
                                  fontSize: 28)),
                          Text('Scoled your business with pro feature.',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              const Row(
                children: [
                  Text('Recent Activity',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'kontora-semi-bold',
                      )),
                  Spacer(),
                  Icon(
                    Icons.keyboard_control_sharp,
                    color: Colors.grey,
                    size: 30,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 230,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              100), // Non nécessaire avec ClipOval, mais peut être utilisé pour d'autres styles
                                        ),
                                        child: Image.asset(
                                          'assets/img/moi.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bodri Mbg',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'kontora-semi-bold',
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text(
                                          'Bodri.M@gmail.com',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.grey)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f9f9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('€5.200',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'kontora-semi-bold',
                                            )),
                                        Text('Account',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 50,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffcaeccd),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: Text('Paid',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            const Text(
                              '#0023 04 Dcember 2021',
                              style: TextStyle(
                                  fontFamily: 'kontora-semi-bold',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 230,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              100), // Non nécessaire avec ClipOval, mais peut être utilisé pour d'autres styles
                                        ),
                                        child: Image.asset(
                                          'assets/img/moi.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bodri Mbg',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'kontora-semi-bold',
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text(
                                          'Bodri.M@gmail.com',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_ios,
                                    color: Colors.grey)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xfff5f9f9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('€5.200',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'kontora-semi-bold',
                                            )),
                                        Text('Account',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 50,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffcaeccd),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: Text('Paid',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            const Text(
                              '#0023 04 Dcember 2021',
                              style: TextStyle(
                                  fontFamily: 'kontora-semi-bold',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar());
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xffecf0f1),
      currentIndex:
          _selectedIndex, // Attribuer l'index de l'élément sélectionné
      onTap: (int index) {
        setState(() {
          _selectedIndex = index; // Mettre à jour l'index de sélection
        });
      },
      items: [
        const BottomNavigationBarItem(
          label: ".",
          icon: Icon(CocoIconLine.Home),
          activeIcon: Icon(
            CocoIconBold.Home,
            size: 30,
            color: Color(
              0xff2cd196,
            ),
          ),
        ),
        const BottomNavigationBarItem(
          label: '',
          icon: Icon(CocoIconLine.Note),
          activeIcon: Icon(
            CocoIconBold.Note,
            size: 30,
            color: Color(
              0xff2cd196,
            ),
          ),
        ),
        BottomNavigationBarItem(
            label: '',
            icon: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen3()),
                );
              },
              // ignore: sort_child_properties_last
              child: const Icon(Icons.add, color: Colors.white),
              backgroundColor: const Color(0xff07313a),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            )),
        const BottomNavigationBarItem(
          label: '',
          icon: Icon(CocoIconLine.Chart),
          activeIcon: Icon(
            CocoIconBold.Chart,
            size: 30,
            color: Color(
              0xff2cd196,
            ),
          ),
        ),
        const BottomNavigationBarItem(
            label: '', icon: Icon(Icons.person_outline_rounded)),
      ],
    );
  }
}
