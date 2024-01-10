import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

void showRatingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return RatingDialog(
        image: const Icon(
          Icons.star,
          size: 50,
          color: Colors.blue,
        ),
        title: Text('Rate this app'),        
        submitButtonText: 'SUBMIT', onSubmitted: (RatingDialogResponse ) {  },
        
      );
    },
  );
}
