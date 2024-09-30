import 'package:flutter/material.dart';



class RadioTab extends StatefulWidget {
  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
            Text(
              '',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown[700],
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
               
                child: Center(
                  
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'إذاعة القرآن الكريم',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown[700],
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {},
                  color: Colors.brown[700],
                  iconSize: 40,
                ),
                IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  onPressed: _togglePlayPause,
                  color: Colors.brown[700],
                  iconSize: 60,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {},
                  color: Colors.brown[700],
                  iconSize: 40,
                ),
              ],
            ),
          ),
        ],
      );

  }

  Widget _buildCircle() {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
  }
}