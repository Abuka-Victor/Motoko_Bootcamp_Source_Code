actor Even{
  public query func checkEven(num: Nat8): async Bool{
    if ((num ^ 1) == (num + 1)){
      return true;
    } else {
      return false;
    }
  };
  
  public query func checkEven2(num: Nat8): async Bool{
    if ((num % 2) == 0){
      return true;
    } else {
      return false;
    }
  }
}