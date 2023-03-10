import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketsystem/screens/hotel_screen.dart';
import 'package:ticketsystem/screens/ticket_view.dart';
import 'package:ticketsystem/utils/app_info_list.dart';
import 'package:ticketsystem/widgets/double_text_widget.dart';

import '../utils/app_styles.dart';





class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                         Text(
                            "Good Morning", style: Styles.headLinestyle3,
                        ),
                         const Gap(5),
                         Text(
                            "Book Tickets", style: Styles.headLinestyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "assets/images/logo.jpg"
                          ),
                        ),
                      ),

                    ),

                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205)),
                      Text(
                          "Search",
                        style: Styles.headLinestyle4,

                      )
                    ],
                  ),
                ),
                const   Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),

          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:const EdgeInsets.only(left:20),
            child:Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),

            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all")
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.only(left:20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              ),
          ),

        ],
      ),
    );
  }
}
