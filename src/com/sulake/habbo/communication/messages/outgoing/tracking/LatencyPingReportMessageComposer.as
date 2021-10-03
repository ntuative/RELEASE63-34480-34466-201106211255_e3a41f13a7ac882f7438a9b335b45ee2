package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2960:int;
      
      private var var_2961:int;
      
      private var var_2959:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2960 = param1;
         this.var_2961 = param2;
         this.var_2959 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2960,this.var_2961,this.var_2959];
      }
      
      public function dispose() : void
      {
      }
   }
}
