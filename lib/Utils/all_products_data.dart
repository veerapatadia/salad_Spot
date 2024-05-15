import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ProductData {
  static List<Map<String, dynamic>> cartProductData = [];
  static Set<Map<String, dynamic>> cartData = {};

  static void convertUniqueData() {
    cartProductData = cartData.toList();
  }

  static List<Map<String, dynamic>> favProductData = [];
  static Set<Map<String, dynamic>> favData = {};

  static void convertData() {
    favProductData = favData.toList();
  }

  static num totalprice() {
    num sum = 0.0;
    for (var element in cartProductData) {
      sum = sum + element['total'];
    }
    return sum;
  }

  static num taxTotal() {
    num plus = 0.0;
    num tax = 18;
    plus = (tax * totalprice()) / 100 + totalprice();
    return plus;
  }

  static num grandtotal() {
    num add = 0.0;
    for (var element in cartProductData) {
      add = totalprice() + element['delivery'];
    }
    return add;
  }

  static String pdfName = "SaladSpot";
  PdfColor pdfPrimaryBlack = PdfColors.green;
  PdfColor pdfPrimaryGreen = PdfColors.green900;

  static List<Map<String, dynamic>> allProductData = <Map<String, dynamic>>[
    {
      'categoryName': 'Fruit Salad',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Tropical Fruit Salad",
          "price": 9.00,
          "description":
              "An exotic blend of tropical fruits including pineapple, mango, papaya, and kiwi.",
          "discount": 0,
          "rating": 4.7,
          "time": 7,
          "average": "5-8",
          "delivery": 4.5,
          "like": false,
          "category": "hot sale",
          "kcal": 150,
          "count": 0,
          "total": 3.50,
          "ingradients": ["🍎", "🍓", "🍌", "🍊", "🥭", "🍐"],
          "thumbnail":
              "https://feelgoodfoodie.net/wp-content/uploads/2017/10/Fresh-Fruit-Salad-06.jpg",
          "image": [
            "https://www.jessicagavin.com/wp-content/uploads/2021/06/tropical-fruit-salad-26-600x900.jpg",
            "https://feelgoodfoodie.net/wp-content/uploads/2017/10/Fresh-Fruit-Salad-06.jpg",
            "https://www.momontimeout.com/wp-content/uploads/2016/05/tropical-fruit-salad-recipe-title.jpeg",
          ]
        },
        {
          "id": 2,
          "title": "Berry Bliss Salad",
          "price": 7.00,
          "description":
              "A delightful combination of fresh berries such as strawberries, blueberries, raspberries, and blackberries.",
          "discount": 0,
          "rating": 4.9,
          "time": 6,
          "average": "4-6",
          "category": "salad",
          "like": false,
          "delivery": 5,
          "kcal": 110,
          "count": 0,
          "total": 3.50,
          "ingradients": ["🥝", "🍇", "🍉", "🍊", "🥭", "🍐"],
          "thumbnail":
              "https://www.allrecipes.com/thmb/87eRIG-DUN4Lx2tyAVoHAinfN0U=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/9155453-1bcd13cd17474504baaea2c3674c40df.jpg",
          "image": [
            "https://wellnessbykay.com/wp-content/uploads/2023/07/fruit-salad-with-stone-fruit-768x1149.jpg",
            "https://www.onelovelylife.com/wp-content/uploads/2020/06/Berry-Green-Salad12.jpg",
            "https://lifemadesweeter.com/wp-content/uploads/Berry-Salad-Photo-Recipe-Picture2-1.jpg",
          ]
        },
      ]
    },
    {
      'categoryName': 'Mexican Salad',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Mexican Corn Salad",
          "price": 12.00,
          "description":
              "A vibrant salad made with grilled corn, cotija cheese, chili powder, lime juice, and cilantro.",
          "discount": 0,
          "rating": 4.8,
          "time": 15,
          "average": "8-10",
          "like": false,
          "delivery": 3.50,
          "tax": 5.0,
          "category": "salad",
          "count": 0,
          "total": 12.00,
          "kcal": 220,
          "ingradients": ["🌽", "🫑", "🧀", "🥬", "🫘"],
          "thumbnail":
              "https://cdn.loveandlemons.com/wp-content/uploads/2013/06/mexican-street-corn-salad-697x1024.jpg",
          "image": [
            "https://www.eatingbirdfood.com/wp-content/uploads/2020/07/Mexican-Street-Corn-Salad-4-768x1152.jpg",
            "https://www.fatrainbow.com/wp-content/uploads/2020/08/Healthy_Mexican_Street_Corn_Salad-4-768x1152.jpg",
            "https://themodernnonna.com/wp-content/uploads/2023/05/Mexican-Corn-Salad-1-PNG.png",
          ]
        },
        {
          "id": 2,
          "title": "Taco Salad",
          "price": 11.00,
          "description":
              "A hearty salad featuring seasoned ground beef, lettuce, tomatoes, cheese, avocado, and crunchy tortilla strips.",
          "discount": 0,
          "rating": 4.7,
          "time": 20,
          "average": "10-12",
          "like": false,
          "category": "popularity",
          "kcal": 320,
          "tax": 5.0,
          "delivery": 3.50,
          "count": 0,
          "total": 11.00,
          "ingradients": ["🥕", "🍅", "🫑", "🧅", "🥑"],
          "thumbnail":
              "https://www.herwholesomekitchen.com/wp-content/uploads/2022/02/taco-salad-2.jpg",
          "image": [
            "https://www.spendwithpennies.com/wp-content/uploads/2022/07/Taco-Salad-2-SpendWithPennies-4-1024x1536.jpg",
            "https://whatsgabycooking.com/wp-content/uploads/2023/09/WGC-Loaded-Taco-Salad-1.jpg",
            "https://garlicsaltandlime.com/wp-content/uploads/2022/07/Chicken-taco-salad-2.jpg",
          ]
        },
      ]
    },
    {
      'categoryName': 'Vegetable Salad',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Vegetable Salad",
          "price": 9.00,
          "description":
              "A fresh and crunchy salad featuring a mix of lettuce, carrots, cucumbers, bell peppers, and cherry tomatoes.",
          "discount": 0,
          "rating": 4.6,
          "time": 10,
          "average": "5-7",
          "like": false,
          "delivery": 3.50,
          "tax": 5.0,
          "category": "hot sale",
          "kcal": 100,
          "total": 9.00,
          "count": 0,
          "ingradients": ["🫑", "🥦", "🥔", "🫛", "🧄"],
          "thumbnail":
              "https://simple-veganista.com/wp-content/uploads/2012/09/healthy-chopped-vegetable-salad-recipe-3.jpg",
          "image": [
            "https://www.bunsinmyoven.com/wp-content/uploads/2021/03/cucumber-tomato-salad-650x975.jpg",
            "https://theviewfromgreatisland.com/wp-content/uploads/2018/06/Farmers-market-vegetable-salad-6117-June-21-2018-768x512.jpg",
            "https://www.prouditaliancook.com/wp-content/uploads/2022/01/whole-veggie-salad.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Caesar Salad",
          "price": 10.00,
          "description":
              "A classic salad made with crisp romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.",
          "discount": 0,
          "rating": 4.9,
          "time": 12,
          "average": "6-8",
          "like": false,
          "delivery": 3.50,
          "tax": 5.0,
          "category": "salad",
          "count": 0,
          "total": 10.00,
          "kcal": 180,
          "ingradients": ["🫛", "🥔", "🍆", "🍅", "🥬", "🫚"],
          "thumbnail":
              "https://s23209.pcdn.co/wp-content/uploads/2023/01/220905_DD_Chx-Caesar-Salad_051-1024x1536.jpg",
          "image": [
            "https://www.twopeasandtheirpod.com/wp-content/uploads/2023/04/Caesar-Salad-24.jpg",
            "https://www.noracooks.com/wp-content/uploads/2022/06/vegan-caesar-salad-2-768x1152.jpg",
            "https://www.whollytasteful.com/wp-content/uploads/2023/05/caesar-tuna-salad-1.jpg",
          ]
        }
      ]
    },
    {
      'categoryName': 'Italian Salad',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Italian Salad",
          "price": 8.00,
          "description":
              "Classic Italian salad with fresh romaine lettuce, cherry tomatoes, black olives, red onions, cucumbers, and Italian dressing.",
          "discount": 0,
          "rating": 4.5,
          "time": 15,
          "average": "10-15",
          "like": true,
          "category": "popularity",
          "kcal": 200,
          "count": 0,
          "delivery": 3.50,
          "tax": 5.0,
          "total": 8.00,
          "ingradients": ["🫑", "🌽", "🧀", "🍅", "🧅", "🍍"],
          "thumbnail":
              "https://www.modernhoney.com/wp-content/uploads/2023/05/Italian-Pasta-Salad-2.jpg",
          "image": [
            "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Caprese-Salad-2-2.jpg",
            "https://www.crowdedkitchen.com/wp-content/uploads/2021/03/italian-chopped-salad-7-1365x2048.jpg",
            "https://theplantbasedschool.com/wp-content/uploads/2022/07/Italian-salad-3-1157x1536.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Veg Italian Salad",
          "price": 9.00,
          "description":
              "A vegetarian twist on the classic Italian salad, featuring fresh romaine lettuce, cherry tomatoes, and Italian dressing.",
          "discount": 0,
          "rating": 4.2,
          "time": 12,
          "average": "10-15",
          "like": true,
          "delivery": 3.50,
          "tax": 5.0,
          "kcal": 180,
          "count": 0,
          "total": 9.00,
          "category": "hot sale",
          "ingradients": ["🫑", "🌽", "🧀", "🍅", "🧅", "🍍"],
          "thumbnail":
              "https://cdn.loveandlemons.com/wp-content/uploads/2020/05/chopped-salad-790x1024.jpg",
          "image": [
            "https://www.eatingbirdfood.com/wp-content/uploads/2022/04/italian-chopped-salad-hero-633x950.jpg",
            "https://cdn.loveandlemons.com/wp-content/uploads/2020/05/chopped-salad-790x1024.jpg",
            "https://midwestfoodieblog.com/wp-content/uploads/2022/04/FINAL-Italian-pasta-salad-1.jpg",
          ]
        }
      ]
    },
    {
      'categoryName': 'Greek Salad',
      'categoryProducts': [
        {
          "id": 1,
          "title": "Veg Greek Salad",
          "price": 9.00,
          "description":
              "Authentic Greek salad made with fresh cucumbers, tomatoes, red onions, bell peppers, Kalamata olives, feta cheese, and Greek dressing.",
          "discount": 0,
          "rating": 4.7,
          "time": 10,
          "average": "8-12",
          "like": true,
          "kcal": 220,
          "delivery": 3.50,
          "tax": 5.0,
          "total": 9.00,
          "category": "salad",
          "count": 0,
          "ingradients": ["🫘", "🥒", "🍅", "🧅", "🥕", "🍇"],
          "thumbnail":
              "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/08/Greek-Salad-6-1.jpg",
          "image": [
            "https://www.ambitiouskitchen.com/wp-content/uploads/2015/03/Easy-Chopped-Chickpea-Greek-Salad-3-750x750.jpg",
            "https://noshingwiththenolands.com/wp-content/uploads/2023/05/IMG_7196.jpg",
            "https://www.saltandlavender.com/wp-content/uploads/2018/03/avocado-greek-salad-5-768x1188.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Greek Salad",
          "price": 10.00,
          "description":
              "A vegetarian version of the traditional Greek salad, featuring fresh cucumbers, tomatoes, red onions, bell peppers, Kalamata olives",
          "discount": 1,
          "rating": 4.4,
          "time": 12,
          "average": "10-15",
          "like": false,
          "kcal": 200,
          "total": 10.00,
          "delivery": 3.50,
          "tax": 5.0,
          "category": "popularity",
          "count": 0,
          "ingredients": ["🧅", "🥒", "🍅", "🧀", "🍆", "🧄", "🫛"],
          "thumbnail":
              "https://natashaskitchen.com/wp-content/uploads/2019/02/Greek-Salad-768x1152.jpg",
          "image": [
            "https://www.aheadofthyme.com/wp-content/uploads/2016/03/the-perfect-greek-salad-7-1173x1536.jpg",
            "https://www.ambitiouskitchen.com/wp-content/uploads/2015/03/Easy-Chopped-Chickpea-Greek-Salad-3-750x750.jpg",
            "https://yupitsvegan.com/wp-content/uploads/2019/09/vegan-greek-salad-1.jpg",
          ]
        }
      ]
    },
  ];
}
