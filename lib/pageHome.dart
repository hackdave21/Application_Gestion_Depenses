import 'package:blurrycontainer/blurrycontainer.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';
import 'mode.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int solde_total = 10000;
  int depenses = 0;
  int epargne = 0;
  int loisirs = 0;
  int index = 0;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  String gValue = 'Depenses';

  List<Depense> listDepenses = [];
  List<int> historique = [];

  @override
  void initState() {
    epargne = epargne_calcul(solde_total);
    depenses = loisirs_depenses(solde_total);
    loisirs = loisirs_depenses(solde_total);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wall.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: principal_color.withOpacity(.3),
          appBar: AppBar(
            backgroundColor: second_color,
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              "D-Gestion",
              style: GoogleFonts.inter(fontWeight: FontWeight.w900),
            ),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: index == 0
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .6,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white12,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.22),
                                    child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/183.800.jpg')),
                                          color: Colors.white12,
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Jonh Doe',
                                  style: GoogleFonts.inter(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    color: white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlurryContainer(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width * .6,
                                    color: Colors.white24,
                                    child: Container()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Solde total: ',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${solde_total} Fcfa',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: const Color.fromARGB(255, 145, 11, 169),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlurryContainer(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width * .6,
                                    color: Colors.white24,
                                    child: Container()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Loisirs: ',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${loisirs} Fcfa',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: const Color.fromARGB(255, 145, 11, 169),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlurryContainer(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width * .6,
                                    color: Colors.white24,
                                    child: Container()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Epargne: ',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${epargne} Fcfa',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: const Color.fromARGB(255, 145, 11, 169),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlurryContainer(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width * .6,
                                    color: Colors.white24,
                                    child: Container()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Depenses: ',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${depenses} Fcfa',
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: const Color.fromARGB(255, 145, 11, 169),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BlurryContainer(
                                    height: 5,
                                    width: MediaQuery.of(context).size.width * .6,
                                    color: Colors.white24,
                                    child: Container()),
                                
                              ],
                            ),
                          ),
                          const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset('assets/images/biblio.png', color: Colors.white),
                                    const SizedBox(
                                  width: 15,
                                ),
                                    Text('Historique', style: GoogleFonts.inter(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                                  ],
                                ),
                               const SizedBox( height: 5),
                                Container(
                                  height: 2,
                                  width: MediaQuery.of(context).size.width*.9,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: historique.map((e) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.2),
                                          height: 50,
                                          width: MediaQuery.of(context).size.width*.9,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0), 
                                            color: e>0 ? Colors.green.withOpacity(.6): Colors.red.withOpacity(.6)
                                          ),
                                          child: Row(
                                            children:  [
                                              CircleAvatar(
                                                backgroundColor: Colors.black,
                                                child: e>0? const Icon(Icons.arrow_drop_up) : const Icon(Icons.arrow_drop_down),
                                              ),
                                             const SizedBox( width: 8,),
                                              Text("${e.toString()} Fcfa", style: GoogleFonts.inter( fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold) ,)
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )
                        ],
                      )
                    : index == 1
                        ? Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Text(
                                  'Enregistrement de sortie',
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                TextFormField(
                                  controller: _nameController,
                                  style: style1,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Nom de la sortie',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: white,
                                        ),
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(width: 2.5, color: Color.fromARGB(255, 145, 11, 169),)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 145, 11, 169).withOpacity(.4))),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 145, 11, 169).withOpacity(.4)))),
                                ),
                                RadioListTile(
                                    title: Text(
                                      'Depenses necessaire',
                                      style: style1,
                                    ),
                                    value: 'Depenses',
                                    groupValue: gValue,
                                    onChanged: (value) {
                                      setState(() {
                                        gValue = 'Depenses';
                                      });
                                    }),
                                RadioListTile(
                                    title: Text(
                                      'Losirs',
                                      style: style1,
                                    ),
                                    value: 'Loisirs',
                                    groupValue: gValue,
                                    onChanged: (value) {
                                      setState(() {
                                        gValue = 'Loisirs';
                                      });
                                    }),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  controller: _amountController,
                                  style: style1,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Montant de la sortie',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: white,
                                        ),
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(width: 2.5, color: Color.fromARGB(255, 145, 11, 169),)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 145, 11, 169).withOpacity(.4))),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: const Color.fromARGB(255, 145, 11, 169).withOpacity(.4)))),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                     int p = int.parse(_amountController.text);
                                      p = p* -1;
                                      historique.add(p);
                                    Depense depense = Depense(
                                        montant:
                                            int.parse(_amountController.text),
                                        name: _nameController.text,
                                        type: gValue);
                                        if( gValue == 'Depenses') {
                                          depenses -= int.parse(
                                            _amountController.text
                                          );
                                        } else {
                                          loisirs -= int.parse(_amountController.text);
                                        }
                                    setState(() {
                                      listDepenses.add(depense);
                                      _amountController =
                                          TextEditingController(text: '');
                                      _nameController = TextEditingController();
                                      gValue = 'Depenses';
                                     
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 45,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 145, 11, 169),
                                        borderRadius:
                                            BorderRadius.circular(22.2)),
                                    child: Text(
                                      'Enregistrer',
                                      style: GoogleFonts.inter(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(23.0),
                            child: Column(
                              children: [
                                
                               Text(
                                    'Enregistrement des sortie',
                                    style: GoogleFonts.inter(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white
                                    ),
                                  ),
                                
                            const  SizedBox( height: 10,),
                                listDepenses.isEmpty
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Liste vide',
                                          style: GoogleFonts.inter(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white30,
                                          ),
                                        ),
                                      )
                                    : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: MediaQuery.of(context).size.width*.35,
                                            child: Text('Nom', style: style1),),
                                             SizedBox(width: MediaQuery.of(context).size.width*.35,
                                             child: Text('Type', style: style1,)),
                                              SizedBox(width: MediaQuery.of(context).size.width*.16,
                                              child: Text('Montant', style: style1,))
                                          ],
                                        ),
                                        Container(
                                          height: 2,
                                          width: MediaQuery.of(context).size.width*.9,
                                        ),
                                        Column(
                                            children: listDepenses.map((depense) {
                                              return Padding(
                                                padding: const EdgeInsets.only(top:8.0),
                                                child: Container(
                                                  height: 50,
                                                  padding: const EdgeInsets.only( left: 4),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12.0), 
                                                        color: depense.type == 'Depenses'?Color.fromARGB(255, 222, 85, 130).withOpacity(.4)
                                                        :Color.fromARGB(255, 223, 42, 60).withOpacity(.4)),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                         SizedBox(
                                                          width: MediaQuery.of(context).size.width*.35,
                                                          child: Text(depense.name, style: style1,)),
                                                        
                                                       
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width*.35,
                                                          child: Text(depense.type, style: style1,)),
                                                        
                                             
                                                         SizedBox(
                                                          width: MediaQuery.of(context).size.width*.16,
                                                          child: Text(depense.montant.toString(), style: style1, )),
                                                        
                                                      ]),
                                                    ),
                                                  
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                      ],
                                    )
                              ],
                            ),
                          )),
          ),
          bottomNavigationBar: SizedBox(
            height: 80,
            child: BottomNavigationBar(
                currentIndex: index,
                unselectedItemColor: grey,
                selectedItemColor: white,
                backgroundColor: second_color,
                items: [
                  BottomNavigationBarItem(
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            height = 60;
                            width = 60;
                            iconSize = 25;
                          });
                        },
                        icon: Image.asset('assets/images/profile.png',
                            color: Colors.white, height: 25),
                      ),
                      label: 'Profile'),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                            height = 0;
                            width = 0;
                            iconSize = 0;
                          });
                        },
                        icon: Image.asset('assets/images/portefeuille.png',
                            color: Colors.white, height: 25),
                      ),
                      label: 'Depenses'),
                  BottomNavigationBarItem(
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 2;
                            height = 0;
                            width = 0;
                            iconSize = 0;
                          });
                        },
                        icon: Image.asset('assets/images/list.png',
                            color: Colors.white, height: 25),
                      ),
                      label: 'Listing')
                ]),
          ),
          floatingActionButton: index == 0
              ? InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: BlurryContainer(
                            height: 150,
                            width: MediaQuery.of(context).size.width * .6,
                            blur: 3,
                            color: Colors.white24,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: style1,
                                      cursorColor: const Color.fromARGB(255, 145, 11, 169),
                                      decoration: InputDecoration(
                                          suffixText: 'Fcfa',
                                          suffixStyle: GoogleFonts.inter(
                                              color: white,
                                              fontWeight: FontWeight.w900),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: white)),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: white)),
                                          focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(255, 145, 11, 169), width: 2.5)),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          label: Text(
                                            'Ajouter du pognon',
                                            style: TextStyle(color: white),
                                          )),
                                      controller: _controller,
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        
                                        setState(() {
                                          try {
                                            solde_total +=
                                                int.parse(_controller.text);
                                                historique.add( int.parse(_controller.text));
                                          } catch (e) {}
                                          Navigator.pop(context);
                                          _controller = TextEditingController();
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(255, 145, 11, 169),
                                              borderRadius:
                                                  BorderRadius.circular(22.0)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.2,
                                                vertical: 8.2),
                                            child: Text(
                                              'Enregister',
                                              style: GoogleFonts.inter(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )))
                                ]),
                          ),
                        );
                      },
                    );
                  },
                  child: AnimatedContainer(
                      child: SizedBox(
                        height: 0,
                        width: 0,
                        child: Icon(
                          Icons.add,
                          color: white,
                          size: iconSize,
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: second_color,
                      ),
                      height: height,
                      width: width,
                      duration: const Duration(milliseconds: 500)),
                )
              : const SizedBox()),
    );
  }

  double height = 60;
  double width = 60;
  double iconSize = 25;
  TextEditingController _controller = TextEditingController();

  int epargne_calcul(int solde_total) => (solde_total * .4).toInt();
  int loisirs_depenses(int solde_total) => (solde_total * .3).toInt();
}
