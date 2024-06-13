//+------------------------------------------------------------------+
//|                                                   tutorial15.mq4 |
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
      
      
         //Modifing order
         
         Alert("modifing order");
         
         bool res;
         
         res = OrderModify(ticket, 0, Bid - 2 *StopLoss*Point, Bid + 2*TakeProfit*Point, 0);
         
         if(res == false){
            
            Alert("error modifing order");
         
         }
         else{
            Alert("order modified succesfully");
         }
         
                  
         /*closing order
      
         
         Alert("Closing order ..." ); 
         
         
         bool res;
         res = OrderClose(ticket, 0.01, Bid, 10);
         
         
         if(res == false){
            Alert("Error closing order");
         }
         else{
            Alert("Order closed succesfully");
         }
         */
         
         
         
         
     }
     

   
  }
//+------------------------------------------------------------------+
