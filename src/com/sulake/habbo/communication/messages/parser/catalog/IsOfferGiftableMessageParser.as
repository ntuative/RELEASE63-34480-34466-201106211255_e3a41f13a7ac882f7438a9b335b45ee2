package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IsOfferGiftableMessageParser implements IMessageParser
   {
       
      
      private var var_1263:int;
      
      private var var_2611:Boolean;
      
      public function IsOfferGiftableMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1263 = param1.readInteger();
         this.var_2611 = param1.readBoolean();
         return true;
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get isGiftable() : Boolean
      {
         return this.var_2611;
      }
   }
}
