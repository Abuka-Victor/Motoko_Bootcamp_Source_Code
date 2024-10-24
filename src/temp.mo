import Iter "mo:base/Iter";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Array "mo:base/Array";
import MyModule "MyModule";

actor Day4{
  var counter : Nat = 0;
  var sample : Nat = 0;

// loop <exp> (while <exp>)? 
// loop {
//   counter += 1;
//   if (counter == 10) {
//     return counter;
//   }
// };

let numArray : [Nat] = [0, 1, 2, 3, 4, 5, 6, 7, 8,9];

for (i in numArray.vals()){
  // Do something
  sample += i;
};

for (i in Iter.range(0,10)){
  // Do something
  sample += i;
};

while(counter < 10){
  // Perform some calculations
  counter += 1;
};

public query func printSample() : async Nat{
  return sample;
};

public query func printCounter() : async Nat{
  return counter;
};

// Optionals

public query func enterAge(age : ?Nat): async ?Nat{
  switch(age) {
  case(null) {
    // return "You have not entered any age";
    return ?0;
    };
  case(_) { 
    // return "You are " # Nat.toText(age) # " years old";
    return age;
  };
};
};

var age : ?Nat = ?30;

switch(age) {
  case(null) {
    // Do something
    };
  case(_) { 
    // Do another thing
  };
};


// Tuple
type myTuple = (Nat, Text);
let Peter : myTuple = (1, "Peter");

let (index, name2) = Peter;

// Records
let Segun = {
  name : Text = "Segun";
  age : Nat = 17;
};
let {name = realName; age = footballAge;} = Segun;


type Person = {
  name : Text;
  age : Nat;
};

let Deborah : Person = {
  name = "Deborah";
  age = 15;
};

// Variants
// type Gender = {
//   #Male : Text;
//   #Female : Text;
// };

type Gender = {
  #Male;
  #Female;
};

type OS = {
  #Mac;
  #Linux;
  #Windows;
};

type User = {
  name: Text;
  matricNo: Text;
  department: Text;
  age: Nat;
  email: Text;
  gender: Gender;
};

var MyStudent : User = {
  name = "";
  matricNo = "";
  department = "";
  age = 0;
  email = "";
  // gender = #Male("Name");
  gender = #Male;
};

// MyStudent.name

public func createUser(user : User) : async Text {
  MyStudent := {name = user.name;
  matricNo = user.matricNo;
  department = user.department;
  age = user.age;
  email = user.email;
  gender = user.gender};
  return "User has been created successfully";
};

// Arrays
let Num : [Int] = [3, 2, 1]; // Immutable Array
let Num2 : [var Int] = [var 3, 2, 1]; // Mutable Array

// Array methods
// Array.size(Num);

// Module function
public query func getPI() : async Float{
  return MyModule.PI;
};

}