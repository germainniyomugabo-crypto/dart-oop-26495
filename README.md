# Dart OOP Assignment: Kigali Bus Card

**Name:** Niyomugabo Germain

**Student ID:** 26495

## My numbers
- D = 95
- L = 5
- Starting balance = 1950 RWF
- Bus fare = 295 RWF
- Student discount = 15% 

## Output of main.dart

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


## Part 1: Why no setter for balance?

There is no setter for balance because users should not change the balance directly. They must use the `topUp()` method to add money and the `pay()` method to deduct money. This helps protect the bus card balance.

## Part 2: What does ~/ do?

The `~/` operator performs integer division. It returns a whole number without decimal places.

- `237 * 17 / 100` = 40.29
- `237 * 17 ~/ 100` = 40

The `/` operator returns a decimal result, while `~/` returns a whole number.


## Part 4: Bug table

Bug	The line	Why it is wrong (your words)	Your fix
1	String _brand; and int _battery;	The fields have no starting value, and Dart does not allow a non-nullable field to start empty.	String _brand = ''; and int _battery = 0;
2	SmartPhone(String brand, int battery, String system) {	The child constructor does not build the parent Phone first, and Phone needs brand and battery.	Add : super(brand, battery) after the parameters.
3	@override above void restart()	@override only works if the parent has that method. Phone has no restart.	Remove @override.
4	p.battery = 100;	There is a getter for battery but no setter, so it cannot be assigned.	Add set battery(int value) that accepts only 0 to 100.
5	print(p.battery());	battery is a getter, so it is used like a field. Writing () treats it like a method.	print(p.battery);
Not a bug	Phone p = new Phone('Tecno', 50);	The new keyword is old style but still allowed in Dart. It works the same as Phone('Tecno', 50).	(none)
The fixed program prints 100.


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

Real output:

1
5

Was I right?

Yes. My prediction was correct because the actual output matches my prediction.
