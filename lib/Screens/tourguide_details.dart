import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:guru/core/component/form_for_tourist.dart';
import 'package:guru/data/models/tour_guide/TourGuideModel.dart';

class TourGuideDetail extends StatefulWidget {
  final TourGuideRequestBody tourGuide;

  const TourGuideDetail({super.key, required this.tourGuide});

  @override
  State<TourGuideDetail> createState() => _TourGuideDetailState();
}

class _TourGuideDetailState extends State<TourGuideDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.tourGuide.name,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 20,
                height: 2,
              ),
              Card(
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.14,
                    height: 300,
                    child: Image.network(
                      widget.tourGuide.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 122, // Set a fixed height for the image
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 20,
                height: 2,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // Text(
          //   widget.tourGuide.name,
          //   style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          // ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Experience",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(widget.tourGuide.workExperiences),
          ),

          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  FormForTourist(tourGuideName: widget.tourGuide.name);
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 61, 58),
              // maximumSize: const Size(125, 40),
            ),
            child: const Text(
              "Book Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Rating",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          RatingBar.builder(
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
            onRatingUpdate: (rating) {
            },
          ),
        ],
      ),
    );
  }
}
