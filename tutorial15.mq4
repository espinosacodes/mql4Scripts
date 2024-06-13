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

extern int TakeProfit = 10;
extern int StopLoss = 10;

void OnStart()
  {
  
  double TakeProfitLevel;
  double StopLossLevel;
  
  TakeProfitLevel = Bid + TakeProfit*Point; //0.0001
  StopLossLevel = Bid - StopLoss*Point;
  
  Alert("TakeProfitLevel = ", TakeProfitLevel);
  Alert("StopLossLevel = ", StopLossLevel);
  
  
  //Send an order
  
  
  OrderSend("EURUSD", OP_BUY, 1.0, Ask, 10, StopLossLevel, TakeProfitLevel, "My 1st Order!");
  
  
  
   
   
  }
//+------------------------------------------------------------------+
