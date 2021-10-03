package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2967:int;
      
      private var var_2966:int;
      
      private var var_2969:int;
      
      private var var_2968:String;
      
      private var var_1972:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2967 = param1.readInteger();
         this.var_2966 = param1.readInteger();
         this.var_2969 = param1.readInteger();
         this.var_2968 = param1.readString();
         this.var_1972 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2967;
      }
      
      public function get minute() : int
      {
         return this.var_2966;
      }
      
      public function get chatterId() : int
      {
         return this.var_2969;
      }
      
      public function get chatterName() : String
      {
         return this.var_2968;
      }
      
      public function get msg() : String
      {
         return this.var_1972;
      }
   }
}
