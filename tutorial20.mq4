//+------------------------------------------------------------------+
//|                                                   tutorial1.mq4 |
//|                                  Copyright 2024, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

extern int TakeProfit = 10; //thath can be changed
extern int StopLoss = 10;

void OnStart()
  {
  
  double TakeProfitLevel;
  double StopLossLevel;
  
  TakeProfitLevel = Bid + TakeProfit*Point; //0.0001
  StopLossLevel = Bid - StopLoss*Point;
  
  
  
  int ticket;
  ticket = OrderSend("EURUSD", OP_BUY, 0.01, Ask, 10, StopLossLevel, TakeProfitLevel, "My 1st Order!");
  
     if(ticket < 0 ){
         Alert("Error");
     }
     else{
         Alert("Your ticker # is : ", string(ticket));
      
         Sleep(5000); //delay 5 sec
         
         
         
         bool res;
         res = OrderSelect(ticket, SELECT_BY_TICKETC); //return bolean value
         
         if(res == flase){
            
            Alert("error selecting an order");
            
         }else{
            
            Alert("Order selected succesfully");
            Alert("Information about order #", ticket , ":");
            Alert("instrument: ", OrderSymbol());
            Alert("Type : ", OrderType());
            Alert("Open Time: ", OrderOpenTime());
            Alert("Open price: ", OrderOpenPrice());  
            Alert("volume: ", OrderLots());
            Alert("Stop Loss: ", OrderStopLoss());
            Alert("Take Profit: ", OrderTakeProfit());
            Alert("comment: ", OrderComment());
            Alert("order close time: ", OrderCloseTime()); //if close time is 0, the order is still open else it is closed
            Alert("order close price: ", OrderClosePrice()); //if close price is 0, the order is still open else it is closed

            Alert("order profit: ", OrderProfit());



           
         
         
         
         }
         
         
         
         
     }
     

   
  }
//+------------------------------------------------------------------+
