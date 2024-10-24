actor Student {


// CRUD - Create Read Update Delete
  type Gender = {
  #Male;
  #Female;
  #Null;
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
  gender = #Male;
};

let MyStudents : [User] = [MyStudent, ];

// Create
public func createUser(user : User) : async Text {
  MyStudent := {name = user.name;
  matricNo = user.matricNo;
  department = user.department;
  age = user.age;
  email = user.email;
  gender = user.gender};
  return "User has been created successfully";
};

// Delete
public func deleteUser() : async Text {
  MyStudent := {name = "";
  matricNo = "";
  department = "";
  age = 0;
  email = "";
  gender = #Null};
  return "User has been deleted successfully";
};

// Read
public query func getUser(): async User{
  return MyStudent;
};

public query func getUserNumber(): async Nat{
  return MyStudents.size();
};

public query func getUserName(): async Text{
  return MyStudent.name;
};

public query func getUserMatric(): async Text{
  return MyStudent.matricNo;
};

public query func getUserEmail(): async Text{
  return MyStudent.email;
};

public query func getUserDepartment(): async Text{
  return MyStudent.department;
};

public query func getUserGender(): async Gender{
  return MyStudent.gender;
};

public query func getUserAge(): async Nat{
  return MyStudent.age;
};

// Update
public func updateUserName(name: Text) : async Text {
  MyStudent := {name = name;
  matricNo = MyStudent.matricNo;
  department = MyStudent.department;
  age = MyStudent.age;
  email = MyStudent.email;
  gender = MyStudent.gender};
  return "Username has been updated successfully";
};
}