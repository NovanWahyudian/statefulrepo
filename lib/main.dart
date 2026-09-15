import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Area Barat"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FOTO
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "asset/kiw.jpeg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 15),

              // JUDUL
              Text(
                "MY BINI",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // PENJELASAN
              Text(
                "Jatim Park merupakan salah satu tempat wisata "
                "yang berada di Kota Batu, Jawa Timur. Tempat ini "
                "menyediakan berbagai wahana dan edukasi yang "
                "cocok untuk wisata bersama keluarga.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              Spacer(),

              // CONTACT DAN LOKASI
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // CONTACT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 8),
                          Text(
                            "Contact",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("0812-3456-7890"),
                    ],
                  ),

                  // LOKASI
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 8),
                          Text(
                            "Lokasi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("Batu, Jawa Timur"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
