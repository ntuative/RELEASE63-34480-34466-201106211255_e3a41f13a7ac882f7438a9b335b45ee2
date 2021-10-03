package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_1020:int = 1;
      
      public static const const_877:int = 2;
      
      public static const const_859:int = 3;
      
      public static const const_1262:int = 4;
      
      public static const const_930:int = 5;
      
      public static const const_1267:int = 6;
       
      
      private var _type:int;
      
      private var var_1241:int;
      
      private var var_2490:String;
      
      private var var_2963:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1241 = param2;
         this.var_2490 = param3;
         this.var_2963 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2490;
      }
      
      public function get time() : String
      {
         return this.var_2963;
      }
      
      public function get senderId() : int
      {
         return this.var_1241;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
