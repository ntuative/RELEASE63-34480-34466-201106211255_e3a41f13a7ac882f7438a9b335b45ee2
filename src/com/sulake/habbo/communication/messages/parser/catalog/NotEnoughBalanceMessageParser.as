package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2143:int = 0;
      
      private var var_2142:int = 0;
      
      private var var_2167:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2143;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2142;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2167;
      }
      
      public function flush() : Boolean
      {
         this.var_2143 = 0;
         this.var_2142 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2143 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         return true;
      }
   }
}
