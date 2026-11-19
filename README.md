# Dart OOP Assignment: Kigali Bus Card

**Name:** Niyomugabo Germain

**Student ID:** 26495

## My numbers
- D = 95
- L = 5
- Starting balance = 1950 RWF
- Bus fare = 295 RWF
- Student discount = 15%


## Part 1: Why no setter for balance?

There is no setter for balance because users should not change the balance directly. They must use the `topUp()` method to add money and the `pay()` method to deduct money. This helps protect the bus card balance.

## Part 2: What does ~/ do?

The `~/` operator performs integer division. It returns a whole number without decimal places.

- `237 * 17 / 100` = 40.29
- `237 * 17 ~/ 100` = 40

The `/` operator returns a decimal result, while `~/` returns a whole number.

## Part 3: Output of main.dart

[Running] dart "c:\Users\USER\Desktop\dart-oop-26495\ main.dart"
Error: name too short
Owner: Niyomugabo Germain | Balance: 1950 RWF
Owner: Niyomugabo Germain | Balance: 1950 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 295 RWF
Paid 295 RWF
Owner: Niyomugabo Germain | Balance: 3360 RWF
Student discount: 44 RWF
Paid 251 RWF
Owner: Niyomugabo Germain | Balance: 1699 RWF
Student card: 15% off

[Done] exited with code=0 in 1.759 seconds


## Part 4: Bug table

Bug	The line	Why it is wrong	Your fix
1	String _brand; int _battery;	Non-nullable fields are not initialized.	Give them starting values.
2	SmartPhone(String brand, int battery, String system)	Parent constructor is not called.	Add : super(brand, battery).
3	@override before restart()	The parent class has no restart() method.	Remove @override.
4	Missing battery setter	Battery cannot be changed using p.battery = 100.	Add a setter accepting 0 to 100.
5	print(p.battery());	Getter is not a method.	Write print(p.battery);.

Not a bug
The line	Why is this line fine?
Phone p = new Phone('Tecno', 50);	The new keyword is valid in Dart for creating an object.


## Part 5: Predict the output

**My prediction:**

```text
1
5
```

**Why?**

- `a.add()` increases `_items` from 0 to 1.
- `a.items = -5` is rejected because the setter accepts only values greater than or equal to 0. The value remains 1.
- `b.add()` adds 2 items because `BigBag` calls `super.add()` twice.
- Calling `b.add()` twice gives 4 items.
- `b.items = b.items + 1` increases the value to 5.