package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2437:int = 0;
      
      private var var_1438:String = "";
      
      private var var_1740:String = "";
      
      private var var_2365:String = "";
      
      private var var_2620:String = "";
      
      private var var_1901:int = 0;
      
      private var var_2621:int = 0;
      
      private var var_2622:int = 0;
      
      private var var_1439:int = 0;
      
      private var var_2623:int = 0;
      
      private var var_1441:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2437 = param1;
         this.var_1438 = param2;
         this.var_1740 = param3;
         this.var_2365 = param4;
         this.var_2620 = param5;
         if(param6)
         {
            this.var_1901 = 1;
         }
         else
         {
            this.var_1901 = 0;
         }
         this.var_2621 = param7;
         this.var_2622 = param8;
         this.var_1439 = param9;
         this.var_2623 = param10;
         this.var_1441 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2437,this.var_1438,this.var_1740,this.var_2365,this.var_2620,this.var_1901,this.var_2621,this.var_2622,this.var_1439,this.var_2623,this.var_1441];
      }
   }
}
