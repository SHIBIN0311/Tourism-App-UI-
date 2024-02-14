import 'package:flutter/material.dart';
import 'package:tourism_app/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color lightTransparentBlue = Colors.blue.withOpacity(0.3);

    List<String> imageUrls = [
      'https://th.bing.com/th/id/OIP.iqZg0aC9myBQYxcsCcfmxgHaH_?w=163&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://th.bing.com/th/id/OIP.ef5e_eQ-3IZGBOm_UJDVEAAAAA?w=236&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://d2gg9evh47fn9z.cloudfront.net/1600px_COLOURBOX5512675.jpg',
      'https://th.bing.com/th/id/OIP.RZFYSxpTaoFm8XKynQVr-QHaHa?rs=1&pid=ImgDetMain',
    ];
    List<String> pictures = [
      'https://d36tnp772eyphs.cloudfront.net/blogs/1/2019/09/Taj-Mahal-1200x849.jpg',
      'https://img.huffingtonpost.com/asset/5877de901700008501929c3c.jpeg?cache=SVnBCeEdtS&ops=1910_1000',
      'https://lp-cms-production.imgix.net/2019-06/iStock_000026994380XLarge.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4',
      'https://th.bing.com/th/id/OSK.HERObmYNIfLWfvGWMCUuQ90DYXzXxQ46QzuUQM5BfnBCjxc?rs=1&pid=ImgDetMain',
      'https://www.revv.co.in/blogs/wp-content/uploads/2019/11/self-drive-car-rental-delhi-gurgaon-noida_revv-blog.jpg',
      'https://th.bing.com/th?id=OSGI.EFFC27969816F8581CF65D55FE4CD35F&w=212&h=190&c=8&rs=2&qlt=80&o=6&cdv=1&pid=18.2',
      'https://th.bing.com/th?id=OSGI.CB54E78B42BF2931502AFD87F1C55C0B&w=212&h=190&c=8&rs=2&qlt=80&o=6&cdv=1&pid=18.2',
      'https://th.bing.com/th?id=OSGI.9E5A155135CC673A736FE2778358EE78&w=212&h=190&c=8&rs=2&qlt=80&o=6&cdv=1&pid=18.2',
    ];
    List<String> placeName = [
      'TAJMAHAL',
      'MALDIVES',
      'KOVALAM',
      'GOA',
      'INDIA GATE',
      'MUNNAR',
      'KOCHI',
      'KODAIKANAL',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'explore your world beauty',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.knVqMW37aRYuhxId096m4wAAAA?pid=ImgDet&w=182&h=182&c=7&dpr=1.3'),
                  )
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: lightTransparentBlue,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                for (String url in imageUrls) _buildSquareAvatar(url),
              ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildHoverText('New', Colors.blue),
                  _buildHoverText('Tour', Colors.blue),
                  _buildHoverText('Asia', Colors.blue),
                  _buildHoverText('Advanture', Colors.blue),
                  _buildHoverText('All', Colors.blue),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) => GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 200,
                        childAspectRatio: 1 / 1,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
                      ),
                      itemCount: pictures.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => NextPage(
                                    pictures: pictures,
                                    index: index,
                                  ),
                                ));
                              },
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  child: Image.network(
                                    pictures[index],
                                    fit: BoxFit.cover,
                                    width: 170,
                                    height: 170,
                                  )),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(placeName[index])
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquareAvatar(String imageUrl) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHoverText(String text, Color hoverColor) {
    return MouseRegion(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    ));
  }
}
