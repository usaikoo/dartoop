# Dart object oriented programming in Myanmar

## မာတိကာ

- Introduction
- [Dart OOP](#dart-oop)
- [Class and Object](#class-and-object)
- [Constructor In Dart](#constructor-in-dart)
- [Default Constructor](#default-constructor)
- [Parameterized Constructor](#parameterized-constructor)
- [Named Constructor In Dart](#named-constructor-in-dart)
- [Constant Constructor In Dart](#constant-constructor-in-dart)
- [Encapsulation In Dart](#encapsulation-in-dart)
- [Getter And Setter](#getter-and-setter)
- [Inheritance In Dart](#inheritance-in-dart)
- [Super In Dart](#super-in-dart)
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



ဒီ Car class ထဲက properties တွေနဲ့ method တစ်ကို အသုံးပြုဖို့ car1 ဆိုပြီး Object တစ်ခုတည်ဆောက်လိုက်ပါတယ်။  အထက်ပါ ကုဒ်နမူနာမှာဆိုလျှင် Toyota ကားကို ဖန်တီးသွားခြင်းဖြစ်ပါတယ်။ 2022 Camry ကားမော်ဒယ် ကို စျေးနူန်းက 250000.020 ဆိုတဲ့ ကားတစ်စီးရပါပြီ။

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

နောက် Honda  ဆိုတဲ့ ကားတစ်စီး ကို အလွယ်တကူ တည်ဆောက်ပြီးပါပြီ။ ဒီမှာ ပြန်ကြည့်ရင် တပ်ခါ ထပ်ခါ ရေးနေရမည့် properties တွေနဲ့ methods ကို လျှော့ချသွားတာတွေ့ရပါတယ်။ ဒါက OOP ရဲ့ ရေးထုံးထဲက တစ်စိတ်တစ်ပိုင်း ဖြစ်ပါတယ်။ 



### Constructor In Dart

constructor ဆိုတာက object တစ်ခုကို စတင်ဖို့ အသုံးပြုသည့် အထူးနည်းလမ်းတစ်ခုဖြစ်ပါတယ်။ 

ကျနော်တို့ အထက်မှာ ပြတဲ့ ကုဒ်မှာ Car Object အရာဝတ္ထုတစ်ခုကို ဖန်တီးတဲ့အခါ Car Object မှာ ပါရမည့် make, model , year , price ဆိုတဲ့ properties (ဂုဏ်သတ္တိများအတွက်) ကနဦးတန်ဖိုးများကို Car class ထဲမှာ သတ်မှတ်ပေးဖို့ constructor  Calss ထဲမှာ တည်ဆောက်ပြီး အသုံးပြုနိုင်ပါတယ်။ ဥပမာ

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
> - Constructor နာမည်ပေးတဲ့အခါ Class name နာမည်နဲ့ တူတူပေးမှရပါမယ်။ 
> - Constructor တွေမှာ return type မရှိပါ။
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

ယခုဖော်ပြပါ ဥပမာ ကိုကြည့်ရင် Car class ထဲမှာ properties တွေထဲမှာ Car Parameterized Constructor တစ်ခု အပြင်  Car.namedConstructor ဆိုပြီး Name Constructor နောက်တစ်ခုကို တည်ဆောက်ပြီး price ကို default အနေဖြင့် optional ပုံစံနဲ့သတ်မှတ်ပြီးရေးသားနိုင်ပါတယ်။ 

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
> အထပ်ပါ code ကို run ကြည့်ပါ။ Output မှာ p1 နှင့် p2 ရဲ့ code တန်ဖိုးက တူညီနေတာကို တွေ့ရမှာပါ။ သို့ပေမဲ့ const နဲ့ မဖန်တီးထားတဲ့ p3 နဲ့ p4 တို့ရဲ့ Object တွေရဲ့ တန်ဖိုးတွေကတော့ တူညီနေမှာမဟုတ်ပါဘူး။ ဘာကြောင့်လဲဆိုရင် hash code တွေရဲ့ constant object တွေက ပရိုဂမ်က compile လုပ်တဲ့အချိန်မှာ generate ထုတ်တာကြောင့်ဖြစ်ပါတယ်။ non-constant မဟုတ်တဲ့ p3 နဲ့ p4 object တွေကတော့ ပရိုဂမ် run time မှာ generate တာကြောင့် တန်ဖိုးမတူညီခြင်းဖြစ်ပါတယ်။

Note: Here p1 and p2 has the same hash code. This is because p1 and p2 are constant objects. The hash code of a constant object is the same. This is because the hash code of a constant object is computed at compile time. The hash code of a non-constant object is computed at run time. This is why p3 and p4 have different hash code.

> Compile Time: ဆိုတာက ကျနော်တို့ ရေးထားတဲ့ code တွေကို computer ကနားလည်အောင် translate လုပ်တဲ့အချိန်ကို ပြောတာပါ။ အဲ့ဒီချိန်မှာ ဖြစ်ပေါ်တဲ့ errors တွေကို compile-time errors, ဥပမာ typos သို့မဟုတ် syntax အမှားတွေရေးသားမိခြင်း။ 
>
>Run Time: ဆိုတာက ကျနော်တို့ ရေးထားတဲ့ ကုဒ် တွေကို စတင်ပြီး execute လုပ်တဲ့အချိန်ကို ပြောဆိုခြင်းဖြစ်ပါတယ်။ အဲ့ဒီချိန်မှာ တွေ့တဲ့ error တွေကိုတော့ run-time errors, ဥပမာ သုညဖြင့် စားရန် လုပ်ဆောင်မိတာတို့ သို့မဟုတ် မရှိတဲ့ ဒေတာကို accessing လုပ်တာတို့။
>#

### Encapsulation
အရိုးရှင်းဆုံးနည်းလမ်းနဲ့ ပြောရရင် Encapsulation ဆိုတာ library အတွင်းမှာ ဒေတာကို ဖုံးကွယ်ထားခြင်းကို  ဆိုလိုတာပါ။ 

In Dart, Encapsulation means hiding data within a library, preventing it from outside factors. It helps you control your program and prevent it from becoming too complicated.




















