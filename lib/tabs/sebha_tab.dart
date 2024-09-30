import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int _counter = 0;
  String _text = "سبحان الله";

  void _incrementCounter() {
    setState(() {
      _counter++;

      // تحديد النص بناءً على قيمة العداد
      if (_counter < 33) {
        _text = "سبحان الله"; // من 0 إلى 32
      } else if (_counter < 66) {
        _text = "الحمد لله"; // من 33 إلى 65
      } else {
        _text = "الله أكبر"; // من 66 إلى 98
      }

      // إعادة تعيين العداد بعد الوصول إلى 99
      if (_counter >= 99) {
        _counter = 0; // إعادة تعيين العداد
        _text = "سبحان الله"; // إعادة تعيين النص
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('', style: TextStyle(fontSize: 40)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _incrementCounter,
                child: Image.asset(
                  "assets/images/sebha_image.png",
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'عدد التسبيحات: $_counter',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _text,
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      // Removed the floating action button
    );
  }
}

