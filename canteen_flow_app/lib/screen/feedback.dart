import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(190),
        child: AppBar(
          flexibleSpace: Container(
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Resualt 1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                'FeedBacks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Back'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
          clipBehavior: Clip.antiAlias,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40, top: 30, right: 40),
                child: SizedBox(
                  width: 308,
                  height: 150,
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        maxLines: 9,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(238, 220, 223, 223),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Enter your feedback...',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RatingDialog(
                          title: const Text(
                            'Rate your experience',
                            textAlign: TextAlign.center,
                          ),
                          submitButtonText: ' ',
                          onSubmitted: (response) {
                            // Handle rating submission
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        // Handle the upload photo action
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFF5B358),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Upload Photo',
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 16,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                    width: 10), // Adjust the spacing as needed
                                Icon(
                                  Icons.photo,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Container(
                        width: 40,
                        height: 50, // Reduced the height for the Submit button
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5B358),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16, // Adjusted the font size
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
