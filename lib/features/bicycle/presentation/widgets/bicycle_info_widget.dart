import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/style_maneger.dart';
import 'package:rideshare_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:rideshare_app/features/bicycle/presentation/widgets/bicycle_info_container.dart';
import 'package:rideshare_app/features/reversation/presentation/pages/reservation_page.dart';
import 'package:rideshare_app/widgets/button_with_fill.dart';
import 'package:rideshare_app/widgets/button_without_fill.dart';

class BicycleInfoWidget extends StatelessWidget {
  const BicycleInfoWidget({super.key, required this.bicycle});
  final Bicycle bicycle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            bicycle.model,
            style: StyleManager.boldTextStyle(),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.network("https://${bicycle.photoPath}",
                width: 200, height: 150),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bicycle Feature",
                style: StyleManager.normalText(),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: ColorManager.primaryColor,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BicycleInfoContainer(
            name: "Type",
            value: bicycle.type,
          ),
          BicycleInfoContainer(
            name: "Size",
            value: "${bicycle.size}",
          ),
          BicycleInfoContainer(
            name: "Price",
            value: "${bicycle.price}",
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Note",
                style: StyleManager.normalText(),
              ),
              const Icon(
                Icons.notes,
                color: ColorManager.primaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BicycleInfoContainer(name: bicycle.note, value: " "),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWithoutFill(
                buttonName: "Book Later",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReservationPage(),
                    ),
                  );
                },
                width: 160,
                height: 50,
              ),
              ButtonWithFill(
                buttonName: "Book now",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReservationPage(),
                    ),
                  );
                },
                width: 160,
                height: 50,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
