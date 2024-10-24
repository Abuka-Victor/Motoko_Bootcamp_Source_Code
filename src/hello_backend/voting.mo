import Array "mo:base/Array";
actor Voting{

  var option1: Text = "Mangoes";
  var option2: Text = "Oranges";

  var option1Votes = 0;
  var option2Votes = 0;

  var users: [Text] = [];


  public query func question(): async Text{
    return "What is your favorite fruit " # option1 # " Or " # option2;
  };

  public func voteOption1(name: Text) : async () {
    var testArray: [Text] = [name];
    users := Array.append<Text>(users, testArray);
    option1Votes += 1;
  };

  public func voteOption2(name: Text) : async () {
    var testArray: [Text] = [name];
    users := Array.append<Text>(users, testArray);
    option2Votes += 1;
  };

  public query func checkOption1Votes(): async Nat {
    return option1Votes;
  };

  public query func checkOption2Votes(): async Nat {
    return option2Votes;
  };

  public func resetVotes() : async () {
    option1Votes := 0;
    option2Votes := 0;
  };
}