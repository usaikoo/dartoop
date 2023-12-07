class Hero {
  // Private properties တွေတည်ဆောက်ထားတာပါ
  int? _id;
  final String? _name = "ကျန်စစ်သား";

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
    // this._name = name;
  }
}

void main() {
  // Hero class ၏ Object တစ်ခုကို ဖန်တီးမယ်
  Hero hero = new Hero();
  //public setter ကိုသုံးပြီး private properties တွေ၏ တန်ဖိုးကို ပြောင်းမယ်။
  // hero.setId(1);
  // hero.setName("ကျန်စစ်သား");
  hero._name = "ငလုံးလဖယ်"; // It is working, but why?

  // getter ကို သုံးပြီး object ၏ တန်ဖိုး တွေကို ပြန်ထုတ်ကြည့်မယ်။
  print("Id: ${hero.getId()}");
  print("Name: ${hero.getName()}");
}
