package com.sulake.habbo.communication.messages.parser.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TradingOpenParser implements IMessageParser
   {
       
      
      private var _userID:int;
      
      private var var_2087:Boolean;
      
      private var var_2088:int;
      
      private var var_2089:Boolean;
      
      public function TradingOpenParser()
      {
         super();
      }
      
      public function get userID() : int
      {
         return this._userID;
      }
      
      public function get userCanTrade() : Boolean
      {
         return this.var_2087;
      }
      
      public function get otherUserID() : int
      {
         return this.var_2088;
      }
      
      public function get otherUserCanTrade() : Boolean
      {
         return this.var_2089;
      }
      
      public function flush() : Boolean
      {
         this._userID = -1;
         this.var_2087 = false;
         this.var_2088 = -1;
         this.var_2089 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._userID = param1.readInteger();
         this.var_2087 = param1.readInteger() == 1;
         this.var_2088 = param1.readInteger();
         this.var_2089 = param1.readInteger() == 1;
         return true;
      }
   }
}
