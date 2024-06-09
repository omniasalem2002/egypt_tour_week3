import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:guru/Screens/tourguide_details.dart';
import 'package:guru/data/models/tour_guide/TourGuideModel.dart';

class CustomGuide extends StatelessWidget {
  final TourGuideRequestBody tourGuide;

  const CustomGuide({Key? key, required this.tourGuide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TourGuideDetail(tourGuide: tourGuide,);
            },
          ),
        );
      },
      child: Card(
        elevation: 10,
        child: Container(
          height: 144,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  tourGuide.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 122, // Set a fixed height for the image
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Text(
                  tourGuide.name,
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RatingBar.builder(
                  itemSize: 20,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 17, 1),
                    );
                  },
                  onRatingUpdate: (rating) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
