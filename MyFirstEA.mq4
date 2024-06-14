
//+
//1
//MyFirstEA.mq4
//

#property copyright "Copyright 2014, ForexBoat"

#property link "http://www.forexboat.com"

#property version "1.00"
#property strict


//+-
// Expert initialization function
//+

int OnInit()
 {
     Alert("expert advisor has been launched");

 return (INIT_SUCCEEDED);
}

// Expert deinitialization function
//
 void OnDeinit(const int reason)
 {

  Alert("edxpert advisor terminated");

 }
//+
/// Expert tick function
//
void OnTick(){
  Alert("your new bid price is :" + string(Bid));

}

