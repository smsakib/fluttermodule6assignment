import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGalleryHomePage(),
    );
  }
}

class PhotoGalleryHomePage extends StatelessWidget {
  final List<String> sampleImages = [
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',

  ];

  final List<String> sampleImageCaptions = [
    'Caption 1',
    'Caption 2',
    'Caption 3',
    'Caption 4',
    'Caption 5',
    'Caption 6',


  ];

  final List<String> samplePhotos = [
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/17168260/pexels-photo-17168260/free-photo-of-wall-decor-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
  ];

  final List<String> samplePhotoTitles = [
    'Title 1',
    'Title 2',
    'Title 3',
  ];

  final List<String> samplePhotoSubtitles = [
    'Subtitle 1',
    'Subtitle 2',
    'Subtitle 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Welcome to the Photo Gallery!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Photos',
              ),
            )
            ,
            GridView.builder(
             shrinkWrap: true,
              itemCount: sampleImages.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('You clicked image ${index + 1}'),
                    ));
                  },

                      child: Column(
                        children: [

                          Container(child:

                          Image.network(sampleImages[index])
                          ),
                          Text(sampleImageCaptions[index]),
                        ],
                      ),


                );
              },
            ),
            ListTile(
              title: Text(samplePhotoTitles[0]),
              subtitle: Text(samplePhotoSubtitles[0]),
              leading: Image.network(samplePhotos[0]),
            ),
            ListTile(
              title: Text(samplePhotoTitles[1]),
              subtitle: Text(samplePhotoSubtitles[1]),
              leading: Image.network(samplePhotos[1]),
            ),
            ListTile(
              title: Text(samplePhotoTitles[2]),
              subtitle: Text(samplePhotoSubtitles[2]),
              leading: Image.network(samplePhotos[2]),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Photos Uploaded Successfully!'),
                ));
              },
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
