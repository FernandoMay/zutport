import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:zutlemane/utils.dart';
import 'package:zutlemane/widgets.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(AppLayout.getHeigth(20)),
            children: [
              Gap(AppLayout.getHeigth(40)),
              Text(
                "Hotels",
                style: Style.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeigth(35)),
              ),
              Gap(AppLayout.getHeigth(20)),
              AppTicketTab(size: size, text1: "Upcoming", text2: "Previous"),
              Gap(AppLayout.getHeigth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigth(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const TicketData(
                textBig1: 'Flutter DB',
                textSmall1: 'Passenger',
                textBig2: '5221 364869',
                textSmall2: 'passport',
              ),
              const TicketData(
                textBig1: '0055 444 77147',
                textSmall1: 'Number of E-ticket',
                textBig2: 'B2SG28',
                textSmall2: 'Boking code',
              ),
              const TicketData(
                textBig1: '*** 2426',
                textSmall1: 'Payment Method',
                textBig2: '\$249.99',
                textSmall2: 'Price',
              ),
              Container(
                margin: EdgeInsets.only(
                    left: AppLayout.getHeigth(15),
                    right: AppLayout.getHeigth(15)),
                padding: EdgeInsets.all(AppLayout.getHeigth(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: BarcodeWidget(
                  data: '0055 444 77147',
                  barcode: Barcode.code128(),
                ),
              ),
              Gap(AppLayout.getHeigth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigth(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeigth(GetPlatform.isAndroid ? 189 : 187),
      // height: 200,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeigth(16)),
        child: Column(
          children: [
            //showing the blue part of card ticket
            Container(
              padding: EdgeInsets.all(AppLayout.getHeigth(16)),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeigth(21)),
                  topRight: const Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Transform.rotate(
                        angle: 1.25,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: isColor == null
                              ? Colors.white
                              : const Color(0xFF8ACCF7),
                        ),
                      ),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Style.headLineStyle3.copyWith(color: Colors.white)
                            : Style.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // width: 100,
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Style.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Style.headLineStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3),
                      SizedBox(
                        // width: 100,
                        child: Text(ticket['to']['name'],
                            style: isColor == null
                                ? Style.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Style.headLineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //showing the middle orange part of card ticket
            Container(
              color: isColor == null ? Style.orangeColor : Colors.white,
              child: Row(children: [
                SizedBox(
                  height: AppLayout.getHeigth(20),
                  width: AppLayout.getWidth(10),
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder: (builtContext, boxConstrainst) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          (boxConstrainst.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                            width: 5,
                            height: 3,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey.shade400),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                  ),
                ),
              ]),
            ),
            //showing the orange part of card ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? Style.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket['date'],
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3,
                        ),
                        Text(
                          'Date',
                          style: isColor == null
                              ? Style.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle4,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticket['depature_time'],
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3,
                        ),
                        Text(
                          'Departure time',
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ticket['number'].toString(),
                          style: isColor == null
                              ? Style.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle3,
                        ),
                        Text(
                          'Number',
                          style: isColor == null
                              ? Style.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle4,
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
    required this.textBig1,
    required this.textBig2,
    required this.textSmall1,
    required this.textSmall2,
  }) : super(key: key);

  final String textBig1;
  final String textBig2;
  final String textSmall1;
  final String textSmall2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(AppLayout.getHeigth(15)),
      margin: EdgeInsets.only(
          left: AppLayout.getHeigth(15), right: AppLayout.getHeigth(16)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textBig1, style: Style.headLineStyle3),
                Gap(AppLayout.getHeigth(5)),
                Text(textSmall1, style: Style.headLineStyle4),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(textBig2, style: Style.headLineStyle3),
                Gap(AppLayout.getHeigth(5)),
                Text(textSmall2, style: Style.headLineStyle4),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
