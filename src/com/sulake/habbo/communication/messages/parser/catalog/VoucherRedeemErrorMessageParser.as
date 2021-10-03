package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1776:String = "";
      
      public function VoucherRedeemErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1776 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1776 = param1.readString();
         return true;
      }
      
      public function get errorCode() : String
      {
         return this.var_1776;
      }
   }
}
