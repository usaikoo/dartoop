# Dart object oriented programming in Myanmar

## မာတိကာ

- Introduction
- [Dart OOP](#dart-oop)
- [Class and Object](#class-and-object)
- [Constructor In Dart](#constructor-in-dart)
- [Encapsulation In Dart](#encapsulation-in-dart)
- [Getter And Setter](#getter-and-setter)
- [Inheritance In Dart](#inheritance-in-dart)
- [Polymorphism In Dart](#polymorphism-in-dart)
- [Static In Dart](#static-in-dart)
- [Enum In Dart](#enum-in-dart)
- [Abstract Class](#abstract-class)
- [Interface In Dart](#interface-in-dart)
- [Mixin In Dart](#mixin-in-dart)
- [Factory Constructor In Dart](#factory-constructor-in-dart)
- [Generics In Dart](#generics-in-dart)

## မိတ်ဆက်

Dart ကို Lars Bak နှင့် Kasper Lund မှ ဒီဇိုင်းထုတ်ထားတာဖြစ်ပြီး Google က ဖန်တီးထားတဲ့ ပရိုဂရမ်ဘာသာစကားတစ်ခုဖြစ်ပါတယ်။ Dart ကို အသုံးပြုပြီး ဝဘ်နှင့် မိုဘိုင်းအက်ပ်များအပြင် ဆာဗာနှင့် ဒက်စ်တော့အက်ပ်လီကေးရှင်းများ ကိုဖန်တီး နိုင်ပါတယ်။ လက်ရှိ cross platform တွေအတွက် မိုဘိုင်းအက်ပ်တွေ ကို flutter ကိုအသုံးပြုပြီး မြန်မြန်ဆန်ဆန် ရေးသားနိုင်တာကြောင့် လက်ရှိ dart က popular ဖြစ်တဲ့ programing language တစ်ခုဖြစ်လာပါပြီ။ Flutter ကို တိုက်ရိုက်သွားမထိခင် Dart OOP ကို သိထားပြီးမှ flutter ကို သွားထိစေချင်ပါတယ်။ လုပ်ငန်းခွင် အင်တာဗျူးပြီဆိုရင် flutter ကို မမေးဘဲ dart oop knowledge ဘယ်လောက်ရှိမရှိကိုစစ်ဆေးပါတယ်။ ယခု ဒီ dart oop အခြေခံသေဘာတရားတွေကို ကျနော်သိသလောက်မြန်မာမူပြုကာ ဖော်ပြထားတာဖြစ်ပြီး လိုအပ်ချက်များရှိပါက ဝင်ရောက် ဖြည့်ဆွက်နိုင်ပါတယ်။

### Dart OOP

Object-oriented programming (OOP) သည် (objects) မြန်မာလိုဆိုရင် (အရာဝတ္တုများ ) ၏ သဘောတရားကို အခြေခံ၍ ပရိုဂရမ်ရေးဆွဲခြင်းပုံစံတစ်ခုဖြစ်ပါတယ်။ အရာဝတ္တု (Object) ထဲမှာ attributes or properties တွေ အပြင် procedures စနစ်ဖြင့် ကုဒ် တွေကို စနစ်တကျ ဖွဲ့စည်းတည်ဆောက်ထားတဲ့ Methods လိုအရာတွေ ပါဝင်ပါတယ်။

##### sequential စနစ်လို ကုဒ်တွေကို တစ်ကြောင်းပြီးနောက် တစ်ကြောင်း top to bottom run သွားတဲ့ စနစ် ကိုက program ကကြီးလာလေလေ ထိန်းသိမ်းရတာခက်လာပြီး ပိုပြီးရူပ်ထွေးလာပါတယ်။ ဒီနည်ကို Procedures နည်းဖြင့် အစားထိုးရေးသားခြင်းဖြစ်ပါတယ်။

### Sequential Code Style

Sequential ဆိုတာက ဒီ ကုဒ်တစ်ခုပြီးရင် နောက် ကုဒ်တစ်ခုကို Program က တန်းစီပြီး အလုပ်လုပ်သွားခြင်းဖြစ်ပါတယ်။ ဥပမာ

```dart
void main() {
  int a = 1;
  int b = 1;
  int result = a + b;
  print(result);
}

```

### Procedures Code Style

အပေါ်မှာ ပြောခဲ့သလိုဘဲ Procedures ကုဒ်ပုစံဆိုတာ Functions တွေ Methods တွေ နဲ့ ကုဒ်တွေကို စနစ်တကျ ဖွဲ့စည်းပြီးရေးသားနည်းဖြစ်ပါတယ်။ ဥပမာ

```dart
void main() {
  // ၁. ဒီကုဒ်ကို လာ run ပါတယ်
  int sum = addNumbers(5, 3);

  //၂. addNumbers ဆိုတဲ့ function အောက်က print ဆိုတဲ့ လိုင်းကို ကျော်ပြီးသွားခေါ်ပါတယ်။


//၄. ရလဒ်ကို နောက်ဆုံးဒီမှာ သွားထုတ်ပြဖို့ပြောပါတယ်။
  print("The sum is: $sum");
}



// Procedure to add two numbers
//၃. ပရိုဂမ်က ဒီလိုင်းကို ကိုရောက်လာပါတယ်

int addNumbers(int a, int b) {
  return a + b;
}

```

### Class and Object

- #### Class In Dart

OOP မှာ Class ဆိုတာက blueprint လို အရာမျိုးကို ဆိုလိုတာပါ။ class တစ်ခုက object တစ်ခုမှာ ရှိမည့် properties နှင့် method ကို သတ်မှတ်ပေးပါတယ်။ ဥပမာ
Car ဆို တဲ့ Class တစ်ခု တနည်းအားဖြင့် သူ့ရဲ့ Blueprint ကို ကျနော်တို့ တည်ဆောက်ထားတယ်ဆိုရင် အဲ့ Car Class (Blueprint ) ကိုသုံးပြီး နောက်ထပ် Toyota | Honda| Ford ကား Object တွေတည်ဆောက်နိုင်ပါတယ်။ ဥမာ

```dart
class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;
  // Method to display car details
  void displayDetails() {
    print('Make: $make, Model: $model, Year: $year, Price: \$${price}');
  }
}



```

အထက်ပါ ကုဒ်နမူနာမှာဆိုရင် ကား ဆိုတဲ့ Class ထဲမှာ သူ့ကို ယူသုံးပြီး ပြုလုပ်မည့် Object တွေမှာ ပါသင့်တဲ့ Properties (make, model, year , price) တွေကို ထည့်ထားတာတွေ့ရပါတယ်။

```dart
String make;
String model;
int year;
double price;

```

နောက်ပြီး displayDetails() Method တစ်ခု ပါဝင်ပါတယ်။

```dart
 void displayDetails() {
    print('Make: $make, Model: $model, Year: $year, Price: \$${price}');
  }
```

- #### Object in Dart

အထက်ပါဖန်တီးခဲ့ တဲ့ Car class ကိုသုံးပြီး Object တစ်ခုဖန်တီးကြည့်ပါမယ်။

```dart
//create car class
class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;
  // Method to display car details
  void displayDetails() {
    print('Make: $make, Model: $model, Year: $year, Price: \$${price}');
  }
}


void main() {
  // Creating car objects
  Car car1 = Car();
  car1.make = "Toyota";
  car1.model = "Camry";
  car1.year = 2022;
  car1.price = 250000.020;
  // Displaying car details
  car1.displayDetails();
}


```

ဒီ Car class ထဲက properties တွေနဲ့ method တစ်ကို အသုံးပြုဖို့ car1 ဆိုပြီး Object တစ်ခုတည်ဆောက်လိုက်ပါတယ်။ အထက်ပါ ကုဒ်နမူနာမှာဆိုလျှင် Toyota ကားကို ဖန်တီးသွားခြင်းဖြစ်ပါတယ်။ 2022 Camry ကားမော်ဒယ် ကို စျေးနူန်းက 250000.020 ဆိုတဲ့ ကားတစ်စီးရပါပြီ။

အလားတူ ဒီ Car Blueprint (Class) ကို သုံးပြိး နောက်ထပ်ကား အလွယ်တကူတစ်စီး တည်ဆောက်ကြည့်မယ်။

```dart

//create car class
class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;
  // Method to display car details
  void displayDetails() {
    print('Make: $make, Model: $model, Year: $year, Price: \$${price}');
  }
}


void main() {
  // Creating car objects
  Car car1 = Car();
  car1.make = "Toyota";
  car1.model = "Camry";
  car1.year = 2022;
  car1.price = 250000.020;
  // Displaying car details
  car1.displayDetails();


// Creating another car objects
  Car car2 = Car();
  car2.make = "Honda";
  car2.model = "Civic";
  car2.year = 2023;
  car2.price = 22000.0;
  // Displaying car details
  car2.displayDetails();
}


```

နောက် Honda ဆိုတဲ့ ကားတစ်စီး ကို အလွယ်တကူ တည်ဆောက်ပြီးပါပြီ။ ဒီမှာ ပြန်ကြည့်ရင် တပ်ခါ ထပ်ခါ ရေးနေရမည့် properties တွေနဲ့ methods ကို လျှော့ချသွားတာတွေ့ရပါတယ်။ ဒါက OOP ရဲ့ ရေးထုံးထဲက တစ်စိတ်တစ်ပိုင်း ဖြစ်ပါတယ်။

### Constructor In Dart

constructor ဆိုတာက object တစ်ခုကို စတင်ဖို့ အသုံးပြုသည့် အထူးနည်းလမ်းတစ်ခုဖြစ်ပါတယ်။

ကျနော်တို့ အထက်မှာ ပြတဲ့ ကုဒ်မှာ Car Object အရာဝတ္ထုတစ်ခုကို ဖန်တီးတဲ့အခါ Car Object မှာ ပါရမည့် make, model , year , price ဆိုတဲ့ properties (ဂုဏ်သတ္တိများအတွက်) ကနဦးတန်ဖိုးများကို Car class ထဲမှာ သတ်မှတ်ပေးဖို့ constructor Calss ထဲမှာ တည်ဆောက်ပြီး အသုံးပြုနိုင်ပါတယ်။ ဥပမာ

```dart

class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;

    //Constructor
    Car(this.make,  this.model, this.year,  this.price );

    // Method to display car details
    void displayDetails() {
    print('Make: $make, Model: $model, Year: $year, Price: \$${price}');
    }
}


void main() {
  // Creating car objects
  Car car1 = Car('Toyota', 'Camry', 2022, 250000.020);
  car1.displayDetails();

}

```

အထပ်မှာ ပြခဲ့တဲ့ code နဲ့ ယခု ကုဒ် ဘာကွားသွားသလဲ ဆိုရင် ယခု code မှာ make, model, year, price ဆိုတဲ့ object value တွေကို object တည်ဆောက်ပြီး နောက် define လုပ်နေစရာမလိုဘဲ Object တည်ဆောက်ရင်း Arguments တွေအနဖြင့် ထည့်သွင်းပေးလိုက်ခြင်းဖြစ်ပါတယ်။

> ### မှတ်သားရန်
>
> - Constructor နာမည်ပေးတဲ့အခါ Class name နာမည်နဲ့ တူတူပေးမှရပါမယ်။
> - Constructor တွေမှာ return type မရှိပါ။
>
> ##

### constructor လေးမျိုးရှိပါတယ်

1. Default Constructor
2. Parameterized Constructor
3. Named Constructor
4. Constant Constructor

#### 1. Default Constructor

Default Constructor ဆိုတာ Dart compiler က အလိုအလျှောက်တည်ဆောက်ထားပေးထားတဲ့ Constructor ကို ေခါ်တာပါ။ Default Constructor မှာ parameters တွေမပါဝင်ဘဲ Class နာမည် အတိုင်း ကြောငြာထားခြင်းဖြစ်ပါတယ်။ ဥပမာ

```dart
class Phone {
  String? name;
  int? brand;

  // Constructor
  Phone() {
    print("This is a default constructor");
  }
}

void main() {
  // Here samsung is object of class Phone.
  Phone samsung = Phone();
}


```

#### 2. Parameterized Constructor

Parameterized constructor ဆိုတာက class တစ်ခုတည်ဆောက်တဲ့အခါ အဲ့ Class instance variable များကို စတင်သတ်မှတ်ဖို့အတွက် အသုံးပြုတာဖြစ်ပါတယ်။တနည်း အားဖြင့် Parameterized constructor ဆိုတာ parameter များ၏ တန်ဖိုး ကိုယူသော constructor ဖြစ်ပါတယ်။ အထပ်မှာ Car Object တစ်ခု ဖန်တီးပြီး ထည့်ပေးလိုက် တဲ့ Arguments (make,model,year,price) တွေရဲ့ တန်ဖိုးကို အလိုလျှောက်သတ်မှတ်ဖို့ပါ။ ဥပမာ ဒီ ကုဒ်ကို ပြန်ကြည့်ပါ။

```dart

class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;

    //Parameterized Constructor
    Car(this.make,  this.model, this.year,  this.price );
}


void main() {
  // Creating car objects with arguments
  Car car1 = Car('Toyota', 'Camry', 2022, 250000.020);


}

```

### 3. Named Constructor

Java, C++, C#, စသည့် ပရိုဂမ်မင်းဘာသာရပ်တွေမှာ အမည်တူ Constructor တွေဖန်တီးလိုးရပါတယ်။ သို့ပေမဲ့ dart မှာ မရပါဘူး။ ဒါပေမဲ့ အဲ့ဒါကို လုပ်ဆောင်လို့ရတဲ့ နည်းလမ်းက Name Constructor ကိုသုံးပြီးတော့ လုပ်ဆောင်နိုင်ခြင်းဖြစ်ပါတယ်။ Named Constructor ကို အသုံးပြုခြင်းက code readability ကို တိုးတတ်စေပါတယ်။ နောက်တစ်ခုက နာမည်တူ constructor တွေဖန်တီးခြင်တဲ့အခါမှာ အသုံးဝင်ပါတယ်။ ဥမမာ

```dart
class Car {
  String ?make;
  String? model;
  int ?year;
  double ?price;

    Car(this.make,  this.model, this.year,  this.price );

  // here Car() is a named constructor
  Car.namedConstructor(this.make,  this.model, this.year,[this.price = 0]);

  void displayCarDetails() {
    print("car name: $make.");
    print("car model: $model.");
    print("car model: $year.");
    print("car price: $price");
  }
}

void main() {
  var car1 = Car("Toyota", "Camry", 2022, 20000.00);
  car1.displayCarDetails();
  var car2 = Car.namedConstructor("Honda", "Civic", 2023);
  car2.displayCarDetails();
}

```

ယခုဖော်ပြပါ ဥပမာ ကိုကြည့်ရင် Car class ထဲမှာ properties တွေထဲမှာ Car Parameterized Constructor တစ်ခု အပြင် Car.namedConstructor ဆိုပြီး Name Constructor နောက်တစ်ခုကို တည်ဆောက်ပြီး price ကို default အနေဖြင့် optional ပုံစံနဲ့သတ်မှတ်ပြီးရေးသားနိုင်ပါတယ်။

> လက်တွေ့ လုပ်ငန်းခွင်သုံး ပရိုဂမ်တွေနဲ့ ရေးသားပြီး ဥပမာကြည့်ကြည့်ပါမယ်။

```dart

import 'dart:convert';

class Car {
  String ?make;
  String? model;
  Car(this.make,  this.model );

  // here Car() is a named constructor
  Car.fromJson(Map<String, dynamic>json){
    make = json['make'];
    model = json['model'];
  }
}

void main() {
    String carJsonData = '{"make":"Toyota","model":"Carma"}';
  Car car1 = Car.fromJson(jsonDecode(carJsonData));
  print("Car 1 model: ${car1.make}");

}


```

အထပ်ပါ ကုဒ်ကို ကြည့်မယ်ဆိုရင် carJsonData ကို ကျနော်တို့ api request ကနေရတယ်လို့သဘောထားကြည့်ပါမယ်။ ဒီ jsonDecode လုပ်ထားတဲ့ json data ကို Car Object ကနေ argument တစ်ခုအနေဖြင့် ထည့်ပေးလိုက်ပါမယ်။

Car class ထဲမှာ Name Constructor ဖြစ်တဲ့ Car.fromJson မှာ parameter အနေနဲ့ လက်ခံပြီးတော့ porperties တွေဖြစ်တဲ့ make နဲ့ model တွေရဲ့ တန်ဖိုးတွေကို ပြောင်းပေးလိုက်ပါတယ်။ ဒီလိုပုံစံမျိုးနှင့် Flutter မှာ api က data တွေကို ကျနော်တို့ fetch ခြင်းဖြစ်ပါတယ်။

### 4. Constant Constructor

const keyword ကို သုံးပြီး constant constructor တွေကို ရေးသားရပါတယ်။ const ကို သုံးပြီး ဖန်တီးထားတဲ့ object တွေရဲ့ တန်ဖိုးဟာ သတ်မှတ်ပြီးတဲ့အခါ ထပ်ချိန်းလို့မရပါဘူး။

> const constructor ကိုသုံးပြုခြင်းက ပရိုဂမ်ရဲ့ စွမ်းဆောင်ရည် ကို ပိုပြီး ကောင်းမွန်စေပါတယ်။

#### Constant Constructor ဖန်းတီးရန် စည်းမျဥ်းများ

> class အတွင်းမှာ ရှိတဲ့ properites တွေကို final ဆိုတဲ့ keyword ကိုသုံးပြီးကြောငြာရန် <br>
> Constant Constructor မှာ body မရှိပါ

ဥပမာ

```dart

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  // p1 and p2 has the same hash code.
  Point p1 = const Point(1, 2);
  print("The p1 hash code is: ${p1.hashCode}");

  Point p2 = const Point(1, 2);
  print("The p2 hash code is: ${p2.hashCode}");
  // without using const
  // this has different hash code.
  Point p3 = Point(2, 2);
  print("The p3 hash code is: ${p3.hashCode}");

  Point p4 = Point(2, 2);
  print("The p4 hash code is: ${p4.hashCode}");
}

```

> #### Note
>
> အထပ်ပါ code ကို run ကြည့်ပါ။ Output မှာ p1 နှင့် p2 ရဲ့ code တန်ဖိုးက တူညီနေတာကို တွေ့ရမှာပါ။ သို့ပေမဲ့ const နဲ့ မဖန်တီးထားတဲ့ p3 နဲ့ p4 တို့ရဲ့ Object တွေရဲ့ တန်ဖိုးတွေကတော့ တူညီနေမှာမဟုတ်ပါဘူး။ ဘာကြောင့်လဲဆိုရင် hash code တွေရဲ့ constant object တွေက ပရိုဂမ်က compile လုပ်တဲ့အချိန်မှာ generate ထုတ်တာကြောင့်ဖြစ်ပါတယ်။ non-constant မဟုတ်တဲ့ p3 နဲ့ p4 object တွေကတော့ ပရိုဂမ် run time မှာ generate တာကြောင့် တန်ဖိုးမတူညီခြင်းဖြစ်ပါတယ်။

Note: Here p1 and p2 has the same hash code. This is because p1 and p2 are constant objects. The hash code of a constant object is the same. This is because the hash code of a constant object is computed at compile time. The hash code of a non-constant object is computed at run time. This is why p3 and p4 have different hash code.

> Compile Time: ဆိုတာက ကျနော်တို့ ရေးထားတဲ့ code တွေကို computer ကနားလည်အောင် translate လုပ်တဲ့အချိန်ကို ပြောတာပါ။ အဲ့ဒီချိန်မှာ ဖြစ်ပေါ်တဲ့ errors တွေကို compile-time errors, ဥပမာ typos သို့မဟုတ် syntax အမှားတွေရေးသားမိခြင်း။
>
> Run Time: ဆိုတာက ကျနော်တို့ ရေးထားတဲ့ ကုဒ် တွေကို စတင်ပြီး execute လုပ်တဲ့အချိန်ကို ပြောဆိုခြင်းဖြစ်ပါတယ်။ အဲ့ဒီချိန်မှာ တွေ့တဲ့ error တွေကိုတော့ run-time errors, ဥပမာ သုညဖြင့် စားရန် လုပ်ဆောင်မိတာတို့ သို့မဟုတ် မရှိတဲ့ ဒေတာကို accessing လုပ်တာတို့။
>
> #

### Encapsulation In Dart

အရိုးရှင်းဆုံးနည်းလမ်းနဲ့ ပြောရရင် Encapsulation ဆိုတာ library(ဆိုတာကျနော်ထပ်ရှင်းပြပါမယ်) အတွင်းက ဒေတာကို ပြင်ပ နေရာကနေ လှမ်းယူခေါ်သုံးခွင့်မရှိအောင် ဖုံးကွယ်ထားခြင်းကို ဆိုလိုတာပါ။ အဲ့လိုနည်းစနစ်ကိုအသုံးပြုပြီးရေးသားခြင်းက မိမိရေးတဲ့ ပရိုဂမ်ကို အရမ်းရူပ်ထွေးမှုမဖြစ်စေဘဲရိုးရှင်းပြီး ကုဒ်စီမံထိမ်းချုပ်ရ လွယ်ကူစေချင်းဖြစ်ပါတယ်။

- Library ဆိုတာဘာလဲ ?

ပုံမှန်အားဖြင့် .dart နဲ့ file ကို library လိုသုံးနူန်းလိုက်ခြင်းဖြစ်ပါတယ်။ library ဆိုတာက functions တွေ နှင့် classess တွေ ပါဝင်ဖွဲ့စည်းထားတဲ့ .dart file တစ်ဖိုင်ကို ရည်ရွယ်ပါတယ်။ import keyword ကို အသုံးပြုပြီး library တစ်ခုနဲ့ တစ်ခု ချိတ်ဆက်အလုပ်လုပ်နိုင်ပါတယ်။ အဲ့လို ချိတ်ဆက်အလုပ်လုပ်ရင်း library တစ်ခု၏ အတွင်းမှ နောက် library တစ်ခုက လာခေါ်ယူသုံးစွဲခွင့်မရှိအောင် data တွေကို ဖုံးကွယ်ထား ခြင်းကို encapsulation လိုခေါ်ခြင်းဖြစ်ပါတယ်။

#### encapsulation လုပ်ဆောင်နိုင်ရန်

1. calss အတွင်းမှ properties တွေကို private (\_) underscore ကိုအသုံးပြုပြီး ကြောငြာပေးရမှာ ဖြစ်ပါတယ်။
2. အထပ်ပါ private အနေနဲ့ ဖန်တီးလိုက်တဲ့ properties တွေ၏ တန်ဖိုးကို ပြုပြင်ဖို့ သို့ ခေါ်ယူဖို့ ဆိုရင် public getter နဲ့ setter methods တွေတည်ဆောက်ပြီး ခေါ်ယူပြုပြင်ရပါမယ်။

> #### မှတ်သားရန်
>
> Dart မှာ php လိုကျနော်တို့ရေး နေကျ Access Modifiers ဖြစ်တဲ့ public, private နဲ့ protected တို့ဆိုတာမရှိပါဘူး။ Dart မှာ က \_ (undersore) ကိုသုံးပြီး private property သို့ method တွေကို ရေးသားရတာပါ။ Encapsulation ဆိုတာနဲ့ class level မှာ မဟုတ်ဘဲ library level မှာဖြစ်တာဆိုတာသတိချပ်စေချင်ပါတယ်။

#### ဥပမာ : Encapsulation

Hero ဆိုတဲ့ class တစ်ခုကို ဖန်တီးလိုက်မယ်။ အဲ့ class မှာ privagte properties \_id နဲ့ \_name နှစ်ခု ရှိပါမယ်။ ကျနော်တို့ နောက် ထပ် public methods setId() နဲ့ setName() ဆိုပြီး private properties ကို ပြုပြင်ဖို့ ထပ်ပြီးတည်ဆောက်ကြည့်ပါမယ်။ ဒီနေရာမှာ getter တွေ setter တွေသုံးသွားတာ ကို အောက်မှာ getter တွေ setter တွေထပ်မံရှင်းလင်းသွားပါမယ်။

```dart
class Hero {
  // Private properties တွေတည်ဆောက်ထားတာပါ
  int? _id;
  String? _name;

// Getter method ကိုတည်ဆောက်ပြီး  private property _id ကို access ယူဖို့ပါ။
  int getId() {
    return _id!;
  }
// Getter method ကိုတည်ဆောက်ပြီး  private property _name ကို access ယူဖို့ပါ။
  String getName() {
    return _name!;
  }
// Setter method တည်ဆောက်ပြီး private property _id ၏တန်ဖိုး ကို ပြုပြင်ဖို့ပါ။
  void setId(int id) {
    this._id = id;
  }
// Setter method တည်ဆောက်ပြီး private property _name ၏တန်ဖိုး ကို ပြုပြင်ဖို့ပါ။
  void setName(String name) {
    this._name = name;
  }

}

void main() {
  // Hero class ၏ Object တစ်ခုကို ဖန်တီးမယ်
  Hero hero = new Hero();
  //public setter ကိုသုံးပြီး private properties တွေ၏ တန်ဖိုးကို ပြောင်းမယ်။
  hero.setId(1);
  hero.setName("ကျန်စစ်သား");

  // getter ကို သုံးပြီး object ၏ တန်ဖိုး တွေကို ပြန်ထုတ်ကြည့်မယ်။
  print("Id: ${hero.getId()}");
  print("Name: ${hero.getName()}");
}
```

အထပ်မှာပြတဲ့ example ကိုဘဲ private properties တွေရဲ့ တန်ဖိုးကို နောက်တနည်းနဲ့ တိုက်ရိုက် သွားထိကြည့်ပါမယ်။

```dart
class Hero {
//  အထပ်ပါကုဒ်များဒီမှာ အရင်တိုင်းရှိတယ်သဘောထားပါ
  ....
}
void main() {
  // Hero class ၏ Object တစ်ခုကို ဖန်တီးမယ်
  Hero hero = new Hero();
  //public setter ကိုသုံးပြီး private properties တွေ၏ တန်ဖိုးကို ပြောင်းမယ်။
  hero.setId(1);
  hero.setName("ကျန်စစ်သား");

  //ဒီနေရာမှာ _name ကို တိုက်ရိုက်သွားခေါ်ပြီး တန်ဖိုးချိန်းလိုက်တာပါ။ အဲ့ဒါဆိုလဲ အလုပ်လုပ်နေမှာ ဘာလို့ private ဆိုပြီး private မဖြစ်တာလဲ?
  hero._name = "ငလုံးလဖယ်";

  // getter ကို သုံးပြီး object ၏ တန်ဖိုး တွေကို ပြန်ထုတ်ကြည့်မယ်။
  print("Id: ${hero.getId()}");
  print("Name: ${hero.getName()}");
}

```

အပေါ်မှာ ပြောခဲ့သလိုဘဲ သူက class level မဟုတ်ပါ library level ဖြစ်လို့ပါ။ အကယ်လို void main() function ကို နောက် .dart file နဲ့ library တစ်ခုသီးသန့်ဆောက်ပြီးယခုလိုခေါ်ကြည်တဲ့အခါ error တတ်ပါလိမ့်မယ်။

main.dart file ကနေ hero.dart file ဆိုပြီး library နှစ်ခု ခွဲ့ပြီး ဒီနည်းအတိုင်းရေးကြည့်တဲ့အခါ ယခုလို error ကို တွေ့ရမှာဖြစ်ပါတယ်။

```The setter '_name' isn't defined for the type 'Hero'.
Try importing the library that defines '_name', correcting the name to the name of an existing setter, or defining a setter or field named '_name'.dartundefined_setter
```

#### Read-only Properties ဆိုပြီး သတ်မှတ်လို့ရပါသေးတယ်။ ဥပမာ

```dart
class Hero {
  int? _id;
 final String _name = "ကျန်စစ်သား";
//  အထပ်ပါကုဒ်များဒီမှာ အရင်တိုင်းရှိတယ်သဘောထားပါ
  ....
}
void main() {
  ...
  // ဒါဆိုရင်တော့ error တတ်ပါပြီ
  hero._name = "ငလုံးလဖယ်";
  ....
}

```

final keyword ကို သုံးပြီး properties တွေရဲ့ တန်ဖိုးကို read only ပုံစံ နဲ့ dart မှာ အသုံးပြုနိုင်ပါတယ်။ ဒီလို final နဲ့ property တန်ဖိုးကို သတ်မှတ်ပြီးပြီဆိုရင် library အတွင်းကနေ တန်ဖိုးကို ချိန်းပိုင်ခွင့်လဲ မရှိတော့ပါဘူး။

> ##
>
> Encapsulation ကဘာကြောင့် အရေးကြီးသလဲ?
>
> ##
>
> - Data ဖုံးကွယ်ခြင်း: class ပြင်ပနေရာကနေ ဒေတာတွေကို access ပမေးချင်တဲ့အခါ Encapsulation အသုံးပြုပြီး data hiding လုပ်နိုင်ခြင်း။
> - Testability: class အတွင်းမှာ ရှိတဲ့ properties တွေ methods တွေကို အလွယ်တကူ test လုပ်နိုင်ခြင်း။
> - Modularity and Code Organization: ကုဒ်တွေကို class အစုအဝေးအတွင်းမှာ ထည့်သွင်းထားနိုင်တယ်။ အဲ့လိုထည့်သွင်းပြီး ထားနိုင်ခြင်းကြောင့် ပရိုဂမ်ကို အလွယ်တကူနားလည်စေနိုင်ပြီး maintain လုပ်ရလွယ်ခြင်း နှင့် update လုပ်ရလွယ်ခြင်း
> - Security: ဒေတာတွေကို unauthorized modification သို့ access လုပ်ခြင်းကနေ ကာကွယ်နိုင်ခြင်း။

#### Getter And Setter

1. Getter ဆိုတာ ဘာလဲ?
   class အတွင်းမှ property တွေ၏ တန်ဖိုးကို ယူဖို့ အတွက် getter တွေသုံးတာပါ။ တနည်းအားဖြင့် object တစ်ခုဖန်တီးတဲ့အခါ class အတွင်းမှာရှိတဲ့ properties တွေရဲ့ တန်ဖိုးကို ယူဖို့ getter တွေကို သုံးပါတယ်။

ဥပမာ

```dart
class Person {
  // Properties
  String? firstName;
  String? lastName;

  // Parameterized constructor ကနေ firstName နဲ့ lastName တန်ဖိုးများအား သတ်မှတ်လိုက်ပါတယ်။
  Person(this.firstName, this.lastName);

  // Getter က ဒီနေရာမှာ properties တန်ဖိုးတွေကို runturn ပြန်ပေးလိုက်ပါတယ်။
  String get fullName => "$firstName $lastName";
}

void main() {
  Person p = Person("John", "Doe");
  // ဒီနေရာမှာ object p ကို ဖန်တီးပြီးနောက် p.fullName ဆိုတဲ့ get (getter) ကို လမ်းခေါ်ပြီး properties တွေရဲ့တန်ဖိုးကို ထုတ်ကြည့်သွားတာကို တွေ့ရမှာပါ
  print(p.fullName);
}
```

> #### မှတ်သားရန် :
>
> getter ကို ရေးတဲ့ပုံစံ နှစ်မျိုးရေးနိုင်ပါတယ်။ အပေါ်က ဥပမာက ဒီ => (fat arrow) ကိုသုံးပြီး ရေးသားထားတာပါ။

```dart
  String get fullName => "$firstName $lastName";
```

> နောက် တစ်နည်းက { } ယခုလိုရေးသားနိုင်ပါတယ်။ 

```dart
 String get fullName {
    return "$firstName $lastName";
  }
```

2. Setter ဆိုတာ ဘာလဲ?
Setter ဆိုတာက proterty တွေရဲ့ တန်ဖိုးကို သတ်မှတ် သို့ ပြုပြင် လိုက်တာပါ။ တနည်းအားဖြင့် object တစ်ခုဖန်တီးတဲ့အခါ class အတွင်းမှာ ရှိတဲ့ properties တွေရဲ့ တန်ဖိုးကို ပြုပြင်ဖို့အတွက် write လုပ်လိုက်ခြင်းဖြစ်ပါတယ်။ များသောအားဖြင့် private property တွေ၏ တန်ဖိုးကို ပြုပြင်ဖို့သုံးတာများပါတယ်။ 

ဥပမာ

```dart 
class Person {
  int _age;

  Person(this._age);
//getter 
  int get age => _age;
//setter ကို set ဆိုတာနဲ့ ဖန်တီးလိုက်ပါတယ်။ age ဆိုတဲ့ properties ကို ပြုပြင်ဖို့အတွက် set age ထဲမှာ newAge parameter တစ်ခုကို လက်ခံထားပါတယ်
  set age(int newAge) {
    // ရလာတဲ့ newAge ရဲ့တန်ဖိုးကို if condition နဲ့ စစ်ဆေးထားပါတယ်။
    if (newAge >= 0 && newAge <= 120) {
      //newAge က 0 နဲညီမယ် သူ့ထက်ကြီးမယ် ပြီးတော့ ၁၂၀ နဲ့ညီပြီး ၁၂၀ ထက်ငယ်မယ်ဆိုရင် private property _age တန်ဖိုးကို လာပြောင်းသွားပါမယ်။ 
      _age = newAge;
      print("Age updated successfully!");

    } else {
      //if condition နဲ့ မညီတဲ့အရာတွေကို ဒီမှာ လာပြီး အလုပ်လုပ်သွားမှာပါ။
      print("Invalid age. Please provide a valid age between 0 and 120.");
    }
  }
}

void main() {
  //person object တစ်ခု ဖန်တဲ့အခါ argument 25 ဆိုတဲ့ age ကိုထည့်ပေးလိုက်ပါတယ်။
  var person = Person(25);
  //လက်ရှိအသက် 25 ကို ထုတ်ပေးပါလိမ့်မယ်
  print("Current age: ${person.age}");

  //ဒီကုဒ်က setter age ကိုခေါ်ပြီး တန်ဖိုး 30 ထည့်ပြီး _age value ကို ပြင်လိုက်ပါတယ်။
  person.age = 30;
  print("Updated age: ${person.age}");

  //ဒီမှာ လဲဘဲ setter age ကို တန်ဖိုး ၁၅၀ ထည့်ပြီး _age value ကို ပြင်ဖို့ကြိုးစားပေမဲ့ error message ဘဲရပါလိမ့်မယ်။
  person.age = 150; // Error message will be printed
  print("Age after invalid update: ${person.age}");

}

```

အထက်ပါ ဥပမာ ကိုကြည့်ရင် setter တွေ dart မှာ ဘယ်လို အလုပ်လုပ်လဲ နာလည်ပြီလို့ယူစပါတယ်။ အကယ်လို့ နားမလည်ရင် နောက်တကြိမ် ကျနော်ပြထားတဲ့ code ကို သေချာ ပြန်ဖတ်ပြီး လိုက်ရေးပြီး result တွေထုတ်ကြည့်ပါ။ 



#### INHERITANCE IN DART
Inhertiance ဆိုတာ အလွယ်တကူပြောရရင် မိဘဆီကနေ သားသမီးက အမွေဆက်ခံတဲ့သဘော ကိုပြောတယ်လို့သေဘာထားကြည့်ပါ။ မိဘပိုင်တဲ့ကား သူ့သားသမီးတွေက ယူမောင်းလို့ရတယ်။  dart မှာဆိုရင်လဲ class နှစ်ခု ကြား သူတို့ပိုင်ဆိုင်တဲ့ properties တွေ methods တွေကို share သုံးခြင်းကို inherticance လို့ခေါ်ပါတယ်။ <b>extend</b> keyword ကို သုံပြီး Parent class က နေ Inheritance ကို လုပ်ဆောင်ရပါတယ်။

> #### မှတ်သားရန် :<br>
> Inherticance ကို ဖန်တီးလိုက်တာနဲ့ မိဘ နှင့် သားသမီး ကြားက is-a relation တစ်ခုဖန်တီး လိုက်တယ်လို့မြင်ကြည့်ပါ။ ဥပမာ Student is a Person, Car is a Vehicle, Dog is a Animal, School is a building စသည့်တို့ဖြစ်ပါတယ်။ <br>
> ###### Dart မှာက single inheritance ကိုဘဲလုပ်ဆောင်နိုင်ပါတယ်။ ဆိုလိုတာက class တစ်ခုက နောက်ထပ် class တစ်ခုဆီကဘဲ inheritance လုပ်ယူလို့ရမှာပါ။ multiple inheritance လုပ်လို့မရပါဘူး။ class တစ်ခုက classes အများကြီးဆီကနေ inheritance ယူခွင့်မရှိပါ။ အဖေက တစ်ယောက်ထဲဘဲရှိတာကိုး အဖေနှစ်ယောက်သုံးယောက်ဆီကနေ အမွေဆက်ခံလို့မရနိုင်သလိုပေါ့ :D...

> ###

##### Syntax

```dart
// သူ့အတွင်းမှာ ရှိတဲ့ properties တွေ methods တွေကို လာပြီး ယူသုံးမှာဖြစ်တဲ့အတွက် သူ့ကို Base class သို့ super class ကို ခေါ်ပါတယ်။
class ParentClass {

  // Parent class code
}

//Base class ကနေ properties တွေ methods တွေကို ခေါ်ယူသုံးမှာမို့ သူကို derived class သို့ sub class လို့ခေါ်ပါတယ်။
class ChildClass extends ParentClass {
  // Child class code
}

```
ဥပမာ 
Character ဆိုတဲ့ class တစ်ခု ကိုဖန်တီးပါမယ်။ နောက် ကျနော်တို့ hero class တစ်ခုဆောက်ပြီး Character ထဲက properties တွေနဲ့ methods တွေကို အမွေဆက်ခံကြည့်ပါမယ်။ 

```dart
class Character {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}
//hero class တစ်ခုဆောက်ပြီး Character ထဲက properties တွေနဲ့ methods တွေကို extends နဲ့ အမွေဆက်ခံထားပါတယ်

class Hero extends Character {
  // Fields
  String? wapon;

  // Method
  void displaySchoolInfo() {
    print("$name မှာ: $wapon ရှိသည်");
  }
}

void main() {
  // Creating an object of the Hero class
  var hero = Hero();
  hero.name = "ကျန်စစ်သား";
  hero.age = 45;
  hero.wapon = "လှံ";
  hero.display();
  hero.displaySchoolInfo();
}


```
> Inheritance ၏ ကောင်းကျိုးများ <br>
- ကုဒ်တွေကို ပြန်သုံးနိုင်တာကြောင့် ကုဒ်အရေအတွက်ကို လျှော့ချနိုင်ခြင်း

- ပရိုဂရမ် ဒဇိုင်းကို ပိုမိုကောင်းမွန်နဲ့ ပုစံဖြစ်အောင် ကူညီပေးနိုင်ခြင်း
- ကုဒ်ရိုးရှင်းမှု၊ သန့်ရှင်းမှု၊ ကုဒ်ထိမ်းသိန်းဖို့  အချိန် နှင့် ငွေ ကုန်ကျသက်သာမှု 

- sub classes တွေအတွက် standard interface တစ်ခု ထားနိုင်ခြင်းနှင့် libraries classes တွေတည်ဆောက်ဖို့ ကူညီနိုင်ခြင်း

> Inheritance အမျိုးအစားများ <br>
- Single Inheritance : base class ကနေ sub class က inhertiance လုပ်ခြင်းကိုဆိုလိုသည်။

- Multilevel Inheritance : base class ကနေ sub class အဲ့ sub class ကို နောက် ထပ် sub calss က ထပ်မံ inheritance လုပ်ခြင်းကို ဆိုလိုသည်။
- Hierarchical Inheritance : base class ကို မတူညီတဲ့ sub classes တွေက inheritance လုပ်ခြင်းကို ဆိုလိုသည်။ 
- Multiple Inheritance : Dart မှာ မရှိပါ။

Multilevel Inheritance ဥပမာ တစ်ခု လုပ်ကြည့်ပါမယ်။ 

```dart 

class Vehical {
String? name;
double? prize;
}

class Tesla extends Vehical {
void display() {
  print("Name: ${name}");
  print("Prize: ${prize}");
}
}

class Model3 extends Tesla {
String? color;

void display() {
    // ဒီနေရာမှာ suber ကိုသုံးထားတာ သတိချပ်စေချင်ပါတယ်။ Base class Vehical ကနေ display method ကို ယူသုံးသွားတာပါ
  super.display();
  print("Color: ${color}");
}
}

void main() {
Model3 m = new Model3();
m.name = "Tesla Model 3";
m.prize = 50000.00;
m.color = "Red";
m.display();
}
```



Hierarchical Inheritance ဥပမာ တစ်ခု လုပ်ကြည့်ပါမယ်။ အထပ်မှာ ပြခဲ့တဲ့ Character ကိုဘဲ နောက်ထပ် Hero တစ်ယောက်ထပ်ဆောက်လိုက်ပါ။

```dart
class Character {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}
// Here In hero class, we are extending the
// properties and methods of the Character class
class Hero extends Character {
  // Fields
  String? wapon;

  // Method
  void displaySchoolInfo() {
    print("$name မှာ: $wapon ရှိသည်");
  }
}
class Hero2 extends Character {
  // Fields
  String? wapon;

  // Method
  void displaySchoolInfo() {
    print("$name မှာ: $wapon ရှိသည်");
  }
}

void main() {
  // Creating an object of the Hero class
  var hero = Hero();
  hero.name = "ကျန်စစ်သား";
  hero.age = 45;
  hero.wapon = "လှံ";
  hero.display();
  hero.displaySchoolInfo();

   // Creating an object of the Hero class
  var hero2 = Hero2();
  hero2.name = "အနော်ရထာ";
  hero2.age = 50;
  hero2.wapon = "မြား";
  hero2.display();
  hero2.displaySchoolInfo();
}


```


> ### မှတ်သားရန်
> - ကုဒ်တွေကို ပြန်လည်အသုံးပြုရန်ဖြစ်ပါတယ်။
> - extends keyword ကို သုံးပြီး ဖန်တီးရပါတယ်။
> - Super class ၏ Properties နှင့် methods ကို sub class ကပြန်ယူသုံးခြင်းဖြစ်တယ်။
> - Sub class ထဲမှာ ၄င်း၏ Properties နှင့် methods တွေ တည်ဆောက်နိုင်ပါတယ်။

####  Dart မှာ ဘာလို့ Multiple Inheritance ကို ခွင့်မပြုတာလဲ?
ဘာလို့လဲဆိုရင် ambiguity (ကုဒ် ရူတ်ထွေးမှု) ကို ဖြစ်စေလိုပါ။ ဥပမာ Apple ဆိုတဲ့ sub class က Base class Fruit နဲ့ Vegetable နှစ်ခုကနေ extend နဲ့ အမွေဆက်ခံထားတဆိုပါဆို့။ အဲ့ဒီ့ Base Classes နှစ်ခုမှာ eat ဆိုတဲ့ နာမည်တူ Method နှစ်ခုရှိနေနိုင်ပါတယ်။  အဲ့လိုဆိုရင် eat ဆိုတဲ့ method ကို Apple က သွားခေါ်တဲ့အခါ ဘယ် Fruit နှင့် Vegetable Base class ၏ eat method နှစ်ခုထဲက ဘယ် Method ကို ခေါ်မှာလဲဆိုတာ ?။ အဲ့လို ရူပ်ထွေးမှုကြောင့် Dart က Support မပေးတာဖြစ်ပါတယ်။


#### INHERITANCE OF CONSTRUCTOR IN DART

ကျနော်တို့ အပေါ်မှာ လေ့လာခဲ့တဲ့ Constructor နဲ့ Inhertiance ကို ပေါင်းပြီး သုံးစွဲခြင်းပါ။ ဒါကြောင့် Constructor နဲ့ Inhertiance ကို နားလည်မှ ဒီကိစ္စကို ဆက်လက်လေ့လာပါ။

Constructor Inheritance ဆိုတာဘာလဲ ?

Base Class (Parent Class ) ထဲက Constructor ကို sub class ကနေ အမွေဆက်ခံ သို့ ခေါ်ယူသုံးစွဲတာကို ဆိုလိုတာပါ။

ဥပမာ အပါ်မှာ လေ့လာခဲ့ တဲ့ constructor လေးမျိုးထဲက Parameterize constructor နဲ့ Inheritance ပေါင်းစပ်ရေးကြည့်ပါမယ်။

```dart
class Character {
  String name;
  int health;

  Character(this.name, this.health);

  void takeDamage(int damage) {
    health -= damage;
    print('$name took $damage damage. Remaining health: $health');
  }

  void attack(Character target, int damage) {
    print('$name performs an attack on ${target.name}.');
    target.takeDamage(damage);
  }

  void showInfo() {
    print('$name - Health: $health');
  }
}

class Hero extends Character {
  String superpower;

//ဒီနေရာမှာ Hero Constructor က : super(name,150)  ဆိုပြီး Base Class Character ထဲက constructor ကို Inheritance လုပ်သွားခြင်းဖြစ်ပါတယ်။
  Hero(String name, this.superpower) : super(name, 150);

  void useSuperpower() {
    print('$name uses superpower: $superpower');
  }

  @override
  void attack(Character target, int damage) {
    print('$name performs a heroic attack on ${target.name}.');
    target.takeDamage(damage);
  }
}

void main() {
  var enemy = Character('Evil Enemy', 100);
  var hero = Hero('Superhero', 'Flight');

  enemy.showInfo();
  hero.showInfo();

  hero.attack(enemy, 20);
  hero.useSuperpower();

  enemy.showInfo();
  hero.showInfo();
}


```
