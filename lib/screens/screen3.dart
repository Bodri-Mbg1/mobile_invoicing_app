import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Create'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.keyboard_control_sharp,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {
              // ignore: avoid_print
              print('Recherche pressée');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invoice #0028',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'kontora-semi-bold'),
            ),
            const Text('Receipent'),
            const SizedBox(height: 10),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xfff5f9f9),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Icon(Icons.clear_outlined, color: Color(0xff2cd196)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Project',
                style: TextStyle(
                  fontSize: 15,
                )),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff2cd196)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text('Item',
                    style: TextStyle(
                      fontSize: 17,
                    )),
                Spacer(),
                Text(
                  '+ Add Item',
                  style: TextStyle(fontSize: 17, color: Color(0xff2cd196)),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Description'),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff2cd196)),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Qty'),
                            Container(
                              width: 40, // Largeur spécifique
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20)), // Hauteur spécifique
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Entrez un texte',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 29),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Price'),
                            Container(
                              width: 120, // Largeur spécifique
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20)), // Hauteur spécifique
                              child: const TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 29),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Total'),
                            Container(
                              width: 120, // Largeur spécifique
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20)), // Hauteur spécifique
                              child: const TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Issued'),
                    Container(
                      width: 170, // Largeur spécifique
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: '24 Nov 2021',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Due'),
                    Container(
                      width: 170, // Largeur spécifique
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20)), // Hauteur spécifique
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: '04 Dec 2021',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total'),
                    Text('€5.200',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'kontora-semi-bold',
                        )),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xff2cd196),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.document_scanner_outlined,
                            color: Colors.white),
                        Text(
                          'Preview',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )

            /*Container(
              width: 30, // Largeur spécifique
              height: 60, // Hauteur spécifique
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Entrez un texte',
                  border: OutlineInputBorder(),
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}
