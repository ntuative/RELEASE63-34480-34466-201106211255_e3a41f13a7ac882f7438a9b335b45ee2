package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1664:Boolean;
      
      private var var_2251:int;
      
      private var var_1696:int;
      
      private var var_1695:int;
      
      private var var_2250:int;
      
      private var var_2253:int;
      
      private var var_2255:int;
      
      private var var_2252:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1664;
      }
      
      public function get commission() : int
      {
         return this.var_2251;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1696;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1695;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2253;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2250;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2255;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2252;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1664 = param1.readBoolean();
         this.var_2251 = param1.readInteger();
         this.var_1696 = param1.readInteger();
         this.var_1695 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_2250 = param1.readInteger();
         this.var_2255 = param1.readInteger();
         this.var_2252 = param1.readInteger();
         return true;
      }
   }
}
