package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1776:int;
      
      private var var_2033:int;
      
      private var var_2034:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2033 = param1.readInteger();
         this.var_1776 = param1.readInteger();
         this.var_2034 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1776 = 0;
         this.var_2033 = 0;
         this.var_2034 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1776;
      }
      
      public function get messageId() : int
      {
         return this.var_2033;
      }
      
      public function get timestamp() : String
      {
         return this.var_2034;
      }
   }
}
