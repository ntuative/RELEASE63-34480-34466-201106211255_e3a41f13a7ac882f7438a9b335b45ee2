package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1357:String;
      
      private var var_1545:Array;
      
      private var var_1183:Array;
      
      private var var_1932:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1357;
      }
      
      public function get choices() : Array
      {
         return this.var_1545.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1183.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1932;
      }
      
      public function flush() : Boolean
      {
         this.var_1357 = "";
         this.var_1545 = [];
         this.var_1183 = [];
         this.var_1932 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1357 = param1.readString();
         this.var_1545 = [];
         this.var_1183 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1545.push(param1.readString());
            this.var_1183.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1932 = param1.readInteger();
         return true;
      }
   }
}
