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
