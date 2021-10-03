package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1796:int;
      
      private var var_2409:String;
      
      private var var_1370:int;
      
      private var var_1382:int;
      
      private var var_1736:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1796 = param1.readInteger();
         this.var_2409 = param1.readString();
         this.var_1370 = param1.readInteger();
         this.var_1382 = param1.readInteger();
         this.var_1736 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1796;
      }
      
      public function get petName() : String
      {
         return this.var_2409;
      }
      
      public function get level() : int
      {
         return this.var_1370;
      }
      
      public function get petType() : int
      {
         return this.var_1382;
      }
      
      public function get breed() : int
      {
         return this.var_1736;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
