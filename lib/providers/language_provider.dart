// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  bool isEn = true;

  Map<String, Object> textsAr = {
    "start": "أبدأ الان",
    "drawer_name": "عالم الطبخ",
    "drawer_item1": "الوجبات",
    "drawer_item2": "الفلاتر",
    "drawer_item3": "المظهر",
    "drawer_switch_title": "اختر لغتك",
    "drawer_switch_item1": "الانكليزية",
    "drawer_switch_item2": "العربية",
    "theme_appBar_title": "نمط التطبيق",
    "theme_screen_title": "قم بتعديل أنماط تطبيقك",
    "theme_mode_title": "أختر مظهر لتطبيقك",
    "System_default_theme": "مظهر الجهاز الافتراضي",
    "light_theme": "المظهر الفاتح",
    "dark_theme": "المظهر الداكن",
    "primary": "أختر اللون الاساسي",
    "accent": "أختر اللون الثانوي",
    "filters_appBar_title": "فلاترك",
    "filters_screen_title": "قم بتعديل فلاتر تطبيقك",
    "Gluten-free": "خالي من الكلوتين",
    "Gluten-free-sub": "يتضمن فقط الاطعمة الخالية من الكلوتين",
    "Lactose-free": "خالي من اللاكتوز",
    "Lactose-free_sub": "يتضمن فقط الاطعمة الخالية من مشتقات الحليب",
    "Vegetarian": "نباتي",
    "Vegetarian-sub": "يتضمن الاطعمة الخالية من المنتجات الحيوانية",
    "Vegan": "نباتي",
    "Vegan-sub": "يتضمن فقط الاطعمة الخالية من المنتجات الحيوانية ومشتقاتها",
    "categories": "التصنيفات",
    "your_favorites": "أطعمتك المفضلة",
    "cat-c1": "أيطالي",
    "cat-c2": "سريع وسهل",
    "cat-c3": "همبرغر",
    "cat-c4": "ألماني",
    "cat-c5": "خفيف ولذيذ",
    "cat-c6": "غريب",
    "cat-c7": "فطور",
    "cat-c8": "أسيوي",
    "cat-c9": "فرنسي",
    "cat-c10": "صيفي",
    "Complexity.Simple": "سهلة",
    "Complexity.Challenging": "متوسطة",
    "Complexity.Hard": "صعبة",
    "Affordability.Affordable": "غير مكلفة",
    "Affordability.Pricey": "مكلفة",
    "Affordability.Luxurious": "باهضة الثمن",
    "min": "دقيقة",
    "min2": "دقائق",
    "meal-m1": "معكرونة مع صلصة الطماطم",
    "meal-m2": "توست هاواي",
    "meal-m3": "كلاسيك هامبرغر",
    "meal-m4": "شريحة وينر",
    "meal-m5": "سلطة مع سلمون مدخن",
    "meal-m6": "موس البرتقال اللذيذ",
    "meal-m7": "الفطائر",
    "meal-m8": "دجاج بالكاري الهندي بالكريمة",
    "meal-m9": "سوفلي الشوكولاته",
    "meal-m10": "سلطة الهليون مع الطماطم الكرزية",
    "Ingredients": "المكونات",
    "Steps": "الخطوات",
    "favorites_text":
    "لم تقم بأضافة طعام مفضل لحد الآن - قم بأضافة بعض الاطعمة!",
    "ingredients-m1": [
      "4 طماطم",
      "1 ملعقة كبيرة زيت زيتون",
      "1 بصلة",
      "250 جرام سباغيتي",
      "بهارات",
      "جبن (اختياري)",
    ],
    "ingredients-m2": [
      "شريحة واحدة من الخبز الأبيض",
      "1 شريحة هام",
      "1 شريحة أناناس",
      "1-2 شرائح جبن",
      "زبدة",
    ],
    "ingredients-m3": [
      "300 جرام ماشية هاك",
      "1 طماطم",
      "1 خيار",
      "1 بصلة",
      "كاتشب",
      "2 خبز برجر",
    ],
    "ingredients-m4": [
      "8 شرحات لحم بتلو",
      '4 بيضات',
      "200 جرام فتات الخبز",
      "100 جرام طحين",
      "300 مل زبدة",
      "100 جرام زيت نباتي",
      'ملح',
      'شرائح ليمون',
    ],
    "ingredients-m5": [
      'جرجير',
      "خس الضأن",
      'بقدونس',
      'الشمرة',
      "200 جرام سالمون مدخن",
      'خردل',
      'الخل البلسمي',
      'زيت الزيتون',
      'ملح وفلفل',
    ],
    "ingredients-m6": [
      "4 صفائح من الجيلاتين",
      "150 مل عصير برتقال",
      "80 جرام سكر",
      "300 جرام زبادي",
      "200 جرام كريم",
      "قشر البرتقال",
    ],
    "ingredients-m7": [
      "1 نصف كوب طحين لجميع الأغراض",
      "3 نصف ملاعق صغيرة من مسحوق الخبز",
      '1 ملعقة صغيرة ملح',
      "1 ملعقة كبيرة سكر أبيض",
      "1 ربع كوب حليب",
      '1 بيضة',
      "3 ملاعق كبيرة زبدة مذابة",
    ],
    "ingredients-m8": [
      "4 صدور دجاج",
      "1 بصلة",
      "2 فص ثوم",
      "قطعة واحدة من الزنجبيل",
      "4 ملاعق كبيرة لوز",
      "1 ملعقة صغيرة فلفل كايين",
      "500 مل من حليب جوز الهند",
    ],
    "ingredients-m9": [
      "1 ملعقة صغيرة زبدة مذابة",
      "2 ملاعق كبيرة سكر أبيض",
      "2 أوقية 70٪ شوكولاتة داكنة ، مقطعة إلى قطع",
      "1 ملعقة كبيرة زبدة",
      "1 ملعقة كبيرة طحين لجميع الأغراض",
      "4 1/3 ملاعق كبيرة من الحليب البارد",
      "1 رشة ملح",
      "1 رشة فلفل كايين",
      "1 صفار بيض كبير",
      "2 بياض بيض كبير",
      "رشة من كريمة التارتار",
      "1 ملعقة كبيرة سكر أبيض",
    ],
    "ingredients-m10": [
      "الهليون الأبيض والأخضر",
      "30 جرام صنوبر",
      "300 جرام من الطماطم الكرز",
      'سلطة',
      "ملح وفلفل وزيت زيتون",
    ],
    "steps-m1": [
      "قطّع الطماطم والبصل إلى قطع صغيرة",
      "اغلي بعض الماء - أضيفي الملح إليه بمجرد أن يغلي.",
      "  ضع السباغيتي في الماء المغلي - يجب أن تنضج في غضون 10 إلى 12 دقيقة.",
      "في غضون ذلك ، سخني بعض زيت الزيتون وأضيفي البصل المقطع.",
      "  بعد دقيقتين أضيفي قطع الطماطم والملح والفلفل والبهارات الأخرى.",
      "الصلصة ستنضج بمجرد أن تنضج السباغيتي.",
      "لا تتردد في إضافة بعض الجبن فوق الطبق النهائي.",
    ],
    "steps-m2": [
      "زبدة جانب واحد من الخبز الأبيض",
      "طبقة لحم الخنزير والأناناس والجبن على الخبز الأبيض",
      "اخبزي التوست لمدة 10 دقائق تقريبًا في الفرن على حرارة 200 درجة مئوية",
    ],
    "steps-m3": [
      "فطائر شكل 2",
      "  تقلى الفطائر من أجل ج. 4 دقائق على كل جانب ،",
      "اقلي الكعك بسرعة من أجل ج. دقيقة واحدة على كل جانب ،",
      "الكعك الصغير مع الكاتشب",
      " قدمي البرجر مع الطماطم والخيار والبصل",
    ],
    "steps-m4": [
      "طرية لحم العجل إلى حوالي 2-4 مم ، والملح على الجانبين.",
      "على طبق مسطح ، حرك البيض لفترة وجيزة بالشوكة",
      "غلفي شرائح اللحم بقليل من الدقيق ثم اغمسيها في البيضة ، وأخيراً ضعيها في فتات الخبز",
      "  سخني الزبدة والزيت في مقلاة كبيرة (اتركي الدهن يسخن بشدة) واقلي شرائح اللحم حتى يصبح لونها بنياً ذهبياً من كلا الجانبين.",
      "تأكد من قلب المقلاة بانتظام حتى تكون شرائح اللحم محاطة بالزيت ويصبح الفتات رقيقًا",
      "قم بإزالة ، وصفي على ورق المطبخ. يقلى البقدونس في الزيت المتبقي ويصفى.",
      "ضع شنيتزل على طبق ساخن وقدم مزينًا بالبقدونس وشرائح الليمون",
    ],
    "steps-m5": [
      "اغسل وقطع السلطة والأعشاب ،",
      "قطع السلمون إلى مكعبات ،",
      "قم بتحويل الخردل والخل وزيت الزيتون إلى صلصة",
      "تحضير السلطة",
      "أضف مكعبات السلمون والصلصة",
    ],
    "steps-m6": [
      "حل الجيلاتين في وعاء",
      " أضف عصير البرتقال والسكر ،",
      "انزع القدر من على الموقد",
      "- إضافة 2 ملاعق كبيرة من الزباد",
      "  قلّب الجيلاتين تحت الزبادي المتبقي ،",
      "تبريد كل شيء في الثلاجة",
      "اخفقي الكريمة وارفعيها تحت كتلة البرتقال",
      "تبرد مرة أخرى لمدة 4 ساعات على الأقل",
      "يقدم مع قشر البرتقال ،",
    ],
    "steps-m7": [
      "في وعاء كبير ، نخلط الدقيق والبيكنج بودر والملح والسكر.",
      "اصنع حفرة في المنتصف واسكب الحليب والبيض والزبدة المذابة ؛ امزج حتى تصبح ناعمة.",
      " قم بتسخين مقلاة أو مقلاة مدهونة قليلاً بالزيت على نار متوسطة عالية.",
      "صب الخليط أو اغرفه على صينية الخبز ، باستخدام ربع كوب تقريبًا لكل فطيرة. غواياكيل، الاكوادور.",
    ],
    "steps-m8": [
      "قطع صدر الدجاج إلى شرائح وقليها ،",
      "يُطحن البصل والثوم والزنجبيل إلى عجينة ويقلى كل شيء",
      "أضف البهارات وقلي القلي",
      " أضف صدور الدجاج + 250 مل من الماء واطبخ كل شيء لمدة 10 دقائق ،",
      "  أضف حليب جوز الهند ،",
      "  يقدم مع الأرز",
    ],
    "steps-m9": [
      "سخني الفرن إلى 190 درجة مئوية. قم بتبطين ورقة خبز مطوية بورق زبدة.",
      'ادهنوا قاع وجوانب 2 رامكين برفق بملعقة صغيرة من الزبدة المذابة ؛ تغطية القاع والجوانب حتى الحافة. ​​',
      "أضيفي ملعقة كبيرة من السكر الأبيض إلى رامكينز. قم بتدوير القوالب حتى يغطي السكر جميع الأسطح.",
      " ضع قطع الشوكولاته في وعاء خلط معدني.",
      "ضع وعاءً فوق قدر به حوالي 3 أكواب من الماء الساخن على نار خفيفة.",
      "تذوب 1 ملعقة كبيرة زبدة في مقلاة على نار متوسطة. يرش الدقيق. اخفقي حتى يندمج الدقيق مع الزبدة ويثخن الخليط.",
      "اخفقي في الحليب البارد حتى يصبح المزيج ناعما و يثخن. نقل الخليط إلى وعاء مع الشوكولاتة المذابة.",
      "أضف الملح والفلفل الحار. تخلط جيدا. أضف صفار البيض واخلطهم حتى يمتزجوا.",
      "اترك الوعاء فوق الماء الساخن (وليس على نار هادئة) للحفاظ على الشوكولاتة دافئة أثناء خفق بياض البيض.",
      "ضع 2 بياض بيض في وعاء الخلط. أضف كريم التارتار. خفقت حتى يبدأ الخليط في التكاثف ويبقى رذاذ من الخفق على السطح لمدة ثانية واحدة قبل أن يختفي في المزيج.",
      "أضف ثلث السكر واخفقه. اخفق في القليل من السكر لمدة 15 ثانية.",
      "اخفقي باقي السكر. استمر في الخفق حتى يصبح المزيج كثيفًا مثل كريم الحلاقة ويحتفظ بقمم ناعمة ، من 3 إلى 5 دقائق.",
      "  نقل أقل من نصف بياض البيض إلى الشوكولاتة.",
      "امزج حتى يندمج بياض البيض جيدًا في الشوكولاتة",
      "أضف باقي بياض البيض. قم بطي الشوكولاتة برفق باستخدام ملعقة ، ثم ارفعها من الأسفل واطويها.",
      "توقف عن الخلط بعد اختفاء بياض البيض. يقسم الخليط بين 2 رامكين جاهز. ضع القوالب على صينية خبز مُجهزة. ",
      "اخبزيها في فرن مسخن مسبقًا حتى تنفخ المشاجرات وترتفع فوق قمة الحافات ، من 12 إلى 15 دقيقة",
    ],
    "steps-m10": [
      "اغسل وقشر واقطع الهليون ،",
      "طبخ في ماء مملح",
      "ملح وفلفل الهليون",
      "تحميص الصنوبر",
      "قطع الطماطم إلى نصفين",
      "تخلط مع الهليون والسلطة والتتبيلة",
      "تقدم مع الرغيف الفرنسي",
    ],
  };
  Map<String, Object> textsEn = {
    "start": "GET STARTED",
    "drawer_name": "Cooking Up!",
    "drawer_item1": "Meal",
    "drawer_item2": "Filters",
    "drawer_item3": "Themes",
    "drawer_switch_title": "Choose your language.",
    "drawer_switch_item1": "English",
    "drawer_switch_item2": "Arabic",
    "theme_appBar_title": "Your Themes",
    "theme_screen_title": "Adjust your themes selection.",
    "theme_mode_title": "Choose your Theme Mode",
    "System_default_theme": "System Default Theme",
    "light_theme": "Light Theme",
    "dark_theme": "Dark Theme",
    "primary": "Choose your primary color",
    "accent": "Choose your accent color",
    "filters_appBar_title": "Your Filters",
    "filters_screen_title": "Adjust your meal selection.",
    "Gluten-free": "Gluten-free",
    "Gluten-free-sub": "Only include gluten-free meals.",
    "Lactose-free": "Lactose-free",
    "Lactose-free_sub": "Only include Lactose-free meals.",
    "Vegetarian": "Vegetarian",
    "Vegetarian-sub": "Only include vegetarian meals.",
    "Vegan": "Vegan",
    "Vegan-sub": "Only include Vegan meals.",
    "categories": "Categories",
    "your_favorites": "Your Favorites",
    "cat-c1": "Italian",
    "cat-c2": "Quick & Easy",
    "cat-c3": "Hamburgers",
    "cat-c4": "German",
    "cat-c5": "Light & Lovely",
    "cat-c6": "Exotic",
    "cat-c7": "Breakfast",
    "cat-c8": "Asian",
    "cat-c9": "French",
    "cat-c10": "Summer",
    "Complexity.Simple": "Simple",
    "Complexity.Challenging": "Challenging",
    "Complexity.Hard": "Hard",
    "Affordability.Affordable": "Affordable",
    "Affordability.Pricey": "Pricey",
    "Affordability.Luxurious": "Luxurious",
    "min": "min",
    "min2": "min",
    "meal-m1": "Spaghetti with Tomato Sauce",
    "meal-m2": "Toast Hawaii",
    "meal-m3": "Classic Hamburger",
    "meal-m4": "Wiener Schnitzel",
    "meal-m5": "Salad with Smoked Salmon",
    "meal-m6": "Delicious Orange Mousse",
    "meal-m7": "Pancakes",
    "meal-m8": "Creamy Indian Chicken Curry",
    "meal-m9": "Chocolate Souffle",
    "meal-m10": "Asparagus Salad with Cherry Tomatoes",
    "Ingredients": "Ingredients",
    "Steps": "Steps",
    "favorites_text": "You have no favorites yet - start adding some!",
    "ingredients-m1": [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    "ingredients-m2": [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    "ingredients-m3": [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    "ingredients-m4": [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    "ingredients-m5": [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    "ingredients-m6": [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    "ingredients-m7": [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    "ingredients-m8": [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    "ingredients-m9": [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    "ingredients-m10": [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    "steps-m1": [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    "steps-m2": [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    "steps-m3": [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    "steps-m4": [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    "steps-m5": [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    "steps-m6": [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    "steps-m7": [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    "steps-m8": [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    "steps-m9": [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    "steps-m10": [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
  };

  changeLan(bool lan) async {
    isEn = lan;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isEn", isEn);
  }

  getLan() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isEn = prefs.getBool("isEn") ?? true;
    notifyListeners();
  }

  Object getTexts(String txt) {
    if (isEn == true) return textsEn[txt]!;
    return textsAr[txt]!;
  }
}
