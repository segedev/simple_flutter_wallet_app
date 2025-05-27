import 'dart:developer';

import 'package:flutter/material.dart';

class UserBalanceScreen extends StatelessWidget {
  final String userName;
  final double balance;

  const UserBalanceScreen({
    super.key,
    required this.userName,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Card(
                  elevation: 15,
                  shadowColor: Colors.blue.withAlpha((0.5 * 255).toInt()),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue.shade400,
                          Colors.blue.shade600,
                          Colors.blue.shade800,
                          Colors.purple.shade700,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withAlpha((0.3 * 255).toInt()),
                          spreadRadius: 3,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: -30,
                          right: -30,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withAlpha(
                                (0.1 * 255).toInt(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -40,
                          left: -40,
                          child: Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withAlpha(
                                (0.0 * 255).toInt(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 28,
                            right: 28,
                            top: 28,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withAlpha(
                                            (0.2 * 255).toInt(),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          border: Border.all(
                                            color: Colors.white.withAlpha(
                                              (0.3 * 255).toInt(),
                                            ),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.account_balance_wallet,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'PREMIUM CARD',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.5,
                                            ),
                                          ),
                                          Text(
                                            'Digital Wallet',
                                            style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green.withAlpha(
                                        (0.2 * 255).toInt(),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.green.withAlpha(
                                          (0.5 * 255).toInt(),
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.verified,
                                          color: Colors.green.shade300,
                                          size: 14,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'ACTIVE',
                                          style: TextStyle(
                                            color: Colors.green.shade200,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Text(
                                userName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2, 2),
                                      blurRadius: 4,
                                      color: Colors.black.withAlpha(
                                        (0.3 * 255).toInt(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white.withAlpha(
                                    (0.1 * 255).toInt(),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Colors.white.withAlpha(
                                      (0.2 * 255).toInt(),
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withAlpha(
                                        (0.1 * 255).toInt(),
                                      ),
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Available Balance',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '\$',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          balance.toStringAsFixed(2),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(1, 1),
                                                blurRadius: 3,
                                                color: Colors.black.withAlpha(
                                                  (0.2 * 255).toInt(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.green.shade400,
                        Colors.green.shade600,
                        Colors.green.shade700,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withAlpha((0.4 * 255).toInt()),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                      BoxShadow(
                        color: Colors.green.withAlpha((0.2 * 255).toInt()),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        log('Send Money button clicked!');
                        log('User: $userName');
                        log('Current Balance: \$${balance.toStringAsFixed(2)}');
                      },
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.white.withAlpha((0.3 * 255).toInt()),
                      highlightColor: Colors.white.withAlpha(
                        (0.1 * 255).toInt(),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(
                                  (0.2 * 255).toInt(),
                                ),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withAlpha(
                                    (0.3 * 255).toInt(),
                                  ),
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              'Send Money',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                                shadows: [
                                  Shadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                    color: Colors.black.withAlpha(
                                      (0.2 * 255).toInt(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
