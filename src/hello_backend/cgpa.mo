actor cgpa {
  let MathematicsUnit: Float = 3;
  let PhysicsUnit: Float = 4;
  let GeoUnit: Float = 2;
  let ChemistryUnit : Float= 4;
  let TMEUnit : Float = 1;
  let TotalUnit : Float = MathematicsUnit + PhysicsUnit + GeoUnit + ChemistryUnit + TMEUnit;
  // let TotalUnit : Float = MathematicsUnit;

  var MathematicsScore = 0;
  var PhysicsScore = 0;
  var GeoScore = 0;
  var ChemistryScore = 0;
  var TMEScore = 0;
  var EarnedUnits : Float = 0;


  public func setMathematicsScore(score: Nat): async Text{
    MathematicsScore := score;
    return "Mathematics Score Set";
  };

    public func setPhysicsScore(score: Nat): async Text{
    PhysicsScore := score;
    return "Physics Score Set";
  };

    public func setChemistryScore(score: Nat): async Text{
    GeoScore := score;
    return "Chemistry Score Set";
  };

    public func setGeoScore(score: Nat): async Text{
    ChemistryScore := score;
    return "Geology Score Set";
  };

    public func setTMEScore(score: Nat): async Text{
    TMEScore := score;
    return "TME Score Set";
  };

  func EarnedUnitsAdder(score : Nat, unit: Float) {
    if(score > 70){
      EarnedUnits += 4 * unit;
    } else if (score > 60 and score < 70){
      EarnedUnits += 3 * unit;
    } else if(score > 50 and score < 60) {
      EarnedUnits += 2 * unit;
    } else if(score > 45 and score < 50) {
      EarnedUnits += 1 * unit;
    } else {
      EarnedUnits += 0 * unit;
    };
  };

  public func calculateCGPA(): async Float{
    EarnedUnits := 0;
    EarnedUnitsAdder(MathematicsScore, MathematicsUnit);
    EarnedUnitsAdder(ChemistryScore, ChemistryUnit);
    EarnedUnitsAdder(PhysicsScore, PhysicsUnit);
    EarnedUnitsAdder(GeoScore, GeoUnit);
    EarnedUnitsAdder(TMEScore, TMEUnit);
    return EarnedUnits / TotalUnit;
  };
}