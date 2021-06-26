import 'package:flutter/material.dart';

import 'bookinglist.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.topLeft,
                height: 325,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4AC1BD),
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Text(
                      'Booking Summary',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          // fontWeight: FontWeight.bold,
                          letterSpacing: 1.3),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 30,
              right: 30,
              bottom: 30,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.13),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Booking Summary',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 2),
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                      BookingSummaryList(),
                      BookingSummaryList(),
                      BookingSummaryList(),
                      BookingSummaryList(),
                      BookingSummaryList(),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _btns('ACTION HISTORY'),
                          _btns('BOOKING DETAILS')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 117,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/png2.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _btns(String string) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: (string=='ACTION HISTORY')?Colors.grey:Color(0xff4AC1BD),),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10.0, vertical: 2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5),
          child: Text(
            string,
            style: TextStyle(
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
