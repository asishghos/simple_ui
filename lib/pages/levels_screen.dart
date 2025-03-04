import 'package:flutter/material.dart';

class LevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(
          'Rewarding Levels',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFF29100),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          LevelCard(
            level: 1,
            minWithdrawal: 50,
            earnings: 25,
            progress: 0.5,
            isCurrentLevel: true,
          ),
          LevelCard(
            level: 2,
            minWithdrawal: 100,
            earnings: 0,
            progress: 0,
          ),
          LevelCard(
            level: 3,
            minWithdrawal: 150,
            earnings: 0,
            progress: 0,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFFF29100),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  final int level;
  final int minWithdrawal;
  final int earnings;
  final double progress;
  final bool isCurrentLevel;

  LevelCard({
    required this.level,
    required this.minWithdrawal,
    required this.earnings,
    required this.progress,
    this.isCurrentLevel = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: isCurrentLevel
            ? BorderSide(color: Color(0xFFF29100), width: 2)
            : BorderSide.none,
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Level $level',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: isCurrentLevel ? Color(0xFFF29100) : Colors.black87,
                  ),
                ),
                if (isCurrentLevel)
                  Icon(
                    Icons.check_circle,
                    color: Color(0xFFF29100),
                  ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Minimum Withdrawal = \$$minWithdrawal',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Text(
              'Your earnings = \$$earnings',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF29100)),
                minHeight: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
