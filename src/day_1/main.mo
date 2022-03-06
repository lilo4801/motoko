import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
  public func add(n : Nat,m : Nat) : async Nat {
    return n+m;
  };
  public func square(n : Nat) : async Nat {
    return n*n;
  };
  public func days_to_second(n : Nat) : async Nat {
    return n*24*60*60;
  };
  var counter : Nat = 0;
  public func increment_counter (n : Nat) : async Nat {
    counter := counter + n;
    return counter;
  };
  public func clear_counter () : async Nat {
    counter := 0;
    return counter;
  };
  public func divide(n : Nat,m : Nat) : async Bool {
    if(m != 0) {
      if(n % m == 0) {
            return true;
          };
    };
    
    return false;
  };
  public func is_even(n : Nat) : async Bool {
    if(n % 2 == 0) {
      return true;
    };
    return false;
  };
   public func sum_of_array(array : [Nat]) : async Nat {
        if (array.size() == 0) {
            return 0;
        };
        var sum : Nat = 0;
            for (value in array.vals()){
                sum += value;
            };
            return sum;
   
    };
  public func maximum(array : [Nat] ) : async Nat {
    if(array.size() == 0) {
      return 0;
    };
    var max : Nat = 0;
    for (value in array.vals()){
      if(max <= value) {
        max := value;
      };
       
    };
    return max;
  };
  public func remove_from_array(array : [Nat],n : Nat ) : async [Nat] {
    return Array.filter(array, func (value : Nat) : Bool {
            return value != n;
        });
  };
   public func selection_sort(array : [Nat]) : async [Nat] {
        return Array.sort(array, Nat.compare);
    };



 
};
