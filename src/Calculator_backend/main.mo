import Nat "mo:base/Nat";
actor Calculator {
  var cell : Nat = 0;

  public func addition(number : Nat) : async Nat {
    cell += number;
    return cell;
  };

  public func subtraction(n : Nat) : async Nat {
    cell -= n;
    return cell;
  };

  public func multiplication(number : Nat) : async Nat {
    cell *= number;
    return cell;
  };
  public func division(number : Nat) : async ?Nat {
    if (number == 0) {

      return null;
    } else {
      cell /= number;
      return ?cell;
    };
  };

  public func clearall() : async () {
    cell := 0;
  };

};
