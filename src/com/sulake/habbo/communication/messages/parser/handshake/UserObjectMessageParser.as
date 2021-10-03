package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1095:String;
      
      private var var_2351:String;
      
      private var var_1804:String;
      
      private var var_2347:int;
      
      private var var_2352:String;
      
      private var var_2350:int;
      
      private var var_2348:int;
      
      private var var_2349:int;
      
      private var var_1153:int;
      
      private var var_746:int;
      
      private var var_2323:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1095 = param1.readString();
         this.var_2351 = param1.readString();
         this.var_1804 = param1.readString();
         this.var_2347 = param1.readInteger();
         this.var_2352 = param1.readString();
         this.var_2350 = param1.readInteger();
         this.var_2348 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         this.var_1153 = param1.readInteger();
         this.var_746 = param1.readInteger();
         this.var_2323 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1095;
      }
      
      public function get customData() : String
      {
         return this.var_2351;
      }
      
      public function get realName() : String
      {
         return this.var_1804;
      }
      
      public function get tickets() : int
      {
         return this.var_2347;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2352;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2350;
      }
      
      public function get directMail() : int
      {
         return this.var_2348;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2349;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1153;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_746;
      }
      
      public function get identityId() : int
      {
         return this.var_2323;
      }
   }
}
