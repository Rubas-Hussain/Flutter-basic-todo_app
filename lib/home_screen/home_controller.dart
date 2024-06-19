import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = (-1).obs;

  void showDetails(int index) {
    if (selectedIndex.value == index) {
      selectedIndex.value = -1;
    } else {
      selectedIndex.value = index;
    }
  }

  List<Map<String, dynamic>> todoList = [
    {
      'index': 0,
      'question': 'Do you accept credit cards?',
      'description': 'Yes, we accept all major credit cards including Visa, MasterCard, and American Express.',
    },
    {
      'index': 1,
      'question': 'What are your opening hours?',
      'description': 'We are open from 9 AM to 9 PM, Monday through Saturday. On Sundays, we are open from 10 AM to 6 PM.',
    },
    {
      'index': 2,
      'question': 'Do you offer home delivery?',
      'description': 'Yes, we offer home delivery for orders above \$50. Delivery charges may apply based on your location.',
    },
    {
      'index': 3,
      'question': 'What is your return policy?',
      'description': 'You can return any unused item within 30 days of purchase with the original receipt for a full refund.',
    },
    {
      'index': 4,
      'question': 'Are pets allowed in the store?',
      'description': 'Yes, pets are allowed in the store as long as they are on a leash or in a carrier.',
    },
    {
      'index': 5,
      'question': 'Do you offer gift wrapping services?',
      'description': 'Yes, we offer complimentary gift wrapping services for all your purchases.',
    },
    // {
    //   'index': 6,
    //   'question': 'Can I track my order online?',
    //   'description': 'Yes, you can track your order online using the tracking number provided in your confirmation email.',
    // },
    // {
    //   'index': 7,
    //   'question': 'Do you have a loyalty program?',
    //   'description': 'Yes, we have a loyalty program where you can earn points for every purchase and redeem them for discounts.',
    // },
    // {
    //   'index': 8,
    //   'question': 'Do you offer bulk discounts?',
    //   'description': 'Yes, we offer bulk discounts for large orders. Please contact our sales team for more details.',
    // },
    // {
    //   'index': 9,
    //   'question': 'What safety measures are you taking for COVID-19?',
    //   'description': 'We are following all recommended safety measures including social distancing, mandatory masks, and regular sanitization of our premises.',
    // },
  ];
}
