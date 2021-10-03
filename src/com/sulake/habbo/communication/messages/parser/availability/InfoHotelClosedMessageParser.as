package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosedMessageParser implements IMessageParser
   {
       
      
      private var _openHour:int;
      
      private var var_1767:int;
      
      private var var_1768:Boolean;
      
      public function InfoHotelClosedMessageParser()
      {
         super();
      }
      
      public function get openHour() : int
      {
         return this._openHour;
      }
      
      public function get openMinute() : int
      {
         return this.var_1767;
      }
      
      public function get userThrownOutAtClose() : Boolean
      {
         return this.var_1768;
      }
      
      public function flush() : Boolean
      {
         this._openHour = 0;
         this.var_1767 = 0;
         this.var_1768 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._openHour = param1.readInteger();
         this.var_1767 = param1.readInteger();
         this.var_1768 = param1.readInteger() > 0;
         return true;
      }
   }
}
