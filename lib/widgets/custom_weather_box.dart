// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomWeatherBox extends StatelessWidget {
  const CustomWeatherBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff000000),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherColumn(
              attName: "Wind",
              attribute: "4km/h",
              image: "assets/images/wind.gif",
            ),
            WeatherColumn(
              attName: "Humidity",
              attribute: "48%",
              image: "assets/images/humidity.gif",
            ),
            WeatherColumn(
              attName: "Visibility",
              attribute: "1km",
              image: "assets/images/visibility.gif",
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherColumn extends StatelessWidget {
  final String attribute;
  final String attName;
  final String image;
  const WeatherColumn({
    Key? key,
    required this.attribute,
    required this.attName,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          attribute,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          attName,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      ],
    );
  }
}
