import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownJurusan1 extends StatefulWidget {
  const DropDownJurusan1({super.key});

  @override
  State<DropDownJurusan1> createState() => _DropDownJurusan1State();
}

class DropDownJurusan2 extends StatefulWidget {
  const DropDownJurusan2({super.key});

  @override
  State<DropDownJurusan2> createState() => _DropDownJurusan2State();
}

class DropDownJurusan3 extends StatefulWidget {
  const DropDownJurusan3({super.key});

  @override
  State<DropDownJurusan3> createState() => _DropDownJurusan3State();
}

class DropDownJurusan4 extends StatefulWidget {
  const DropDownJurusan4({super.key});

  @override
  State<DropDownJurusan4> createState() => _DropDownJurusan4State();
}

class _DropDownJurusan1State extends State<DropDownJurusan1> {
  @override
  // ignore: override_on_non_overriding_member
  final List<String> items = [
    'Cisarua-Kopo                        Rp 4.000',
    'Cisarua-Megamendung      Rp 5.000',
    'Cisarua-Cibogo                    Rp 5.000',
    'Cisarua-Gadog                     Rp 6.000',
    'Cisarua-Tajur                        Rp 8.000',
    'Cisarua-Sukasari                 Rp 10.000',
    'Baranangsiang-Ciawi          Rp 5.000',
    'Ciawi-Megamendung          Rp 4.000',
    'Tajur-Kopo                             Rp 8.000',
    'Gadog-Cipayung                   Rp 5.000',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  'Cisarua-Sukasari',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          buttonHeight: 90,
          buttonWidth: 280,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Color(0xffFF8E4F),
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 330,
          dropdownWidth: 310,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xffFF8E4F),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class _DropDownJurusan2State extends State<DropDownJurusan2> {
  @override
  // ignore: override_on_non_overriding_member
  final List<String> items = [
    'Ciheleut-Pakuan                     Rp 4.000',
    'Ciheleut-Pajajaran                  Rp 5.000',
    'Ciheleut-Ir.H.Juanda              Rp 5.000',
    'Ciheleut-Suryakencana         Rp 6.000',
    'Ciheleut-Ramayana                Rp 8.000',
    'Ramayana-Suryakencana     Rp 10.000',
    'Ramayana-Ir.H.Juanda          Rp 5.000',
    'Ramayana-Pajajaran              Rp 4.000',
    'Ramayana-Pakuan                 Rp 8.000',
    'Ramayana-Ciheleut                Rp 5.000',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  '06 Ciheleut-Ramayana',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          buttonHeight: 90,
          buttonWidth: 280,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Color(0xffFF8E4F),
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 330,
          dropdownWidth: 310,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xffFF8E4F),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class _DropDownJurusan3State extends State<DropDownJurusan3> {
  @override
  // ignore: override_on_non_overriding_member
  final List<String> items = [
    'Warung Nangka-Rancamaya          Rp 5.000',
    'Warung Nangka-Cogreg                  Rp 5.000',
    'Warung Nangka-Jl.Cipaku              Rp 5.000',
    'Warung Nangka-Jl.Pahlawan         Rp 5.000',
    'Warung Nangka-Gg.Aut                  Rp 5.000',
    'Warung Nangka-BTM                      Rp 5.000',
    'BTM-Jl.R.Syarif Bustaman             Rp 5.000',
    'BTM-Jl.Pahlawan                             Rp 5.000',
    'BTM-Jl.Cipaku                                  Rp 5.000',
    'BTM-Warung Nangka                      Rp 5.000',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  '02 Warung Nangka-BTM',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          buttonHeight: 90,
          buttonWidth: 280,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Color(0xffFF8E4F),
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 330,
          dropdownWidth: 310,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xffFF8E4F),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}

class _DropDownJurusan4State extends State<DropDownJurusan4> {
  @override
  // ignore: override_on_non_overriding_member
  final List<String> items = [
    'Cimahpar-Jl.Sancang                  Rp 5.000',
    'Cimahpar-Jl.Kumbang                 Rp 5.000',
    'Cimahpar-Jl.Lodaya                     Rp 5.000',
    'Cimahpar-Jl.Raya Pajajaran       Rp 5.000',
    'Cimahpar-Jl.Otista                       Rp 5.000',
    'Cimahpar-BTM                              Rp 5.000',
    'BTM-Jl.Ir.H.Juanda                      Rp 5.000',
    'BTM-Jl.Jalak Harupat                  Rp 5.000',
    'BTM-Jl.Pangrango                        Rp 5.000',
    'BTM-Cimahpar                               Rp 5.000',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  '03 Cimahpar-BTM',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          buttonHeight: 90,
          buttonWidth: 280,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Color(0xffFF8E4F),
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 330,
          dropdownWidth: 310,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xffFF8E4F),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
