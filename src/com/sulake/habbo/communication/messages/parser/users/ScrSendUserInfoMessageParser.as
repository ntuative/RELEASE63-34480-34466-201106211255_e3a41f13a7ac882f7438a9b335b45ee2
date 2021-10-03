package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2096:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1246:int = 3;
       
      
      private var var_1017:String;
      
      private var var_2276:int;
      
      private var var_2278:int;
      
      private var var_2277:int;
      
      private var var_2282:int;
      
      private var var_2283:Boolean;
      
      private var var_2280:Boolean;
      
      private var var_2281:int;
      
      private var var_2279:int;
      
      private var var_2285:Boolean;
      
      private var var_2275:int;
      
      private var var_2284:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1017 = param1.readString();
         this.var_2276 = param1.readInteger();
         this.var_2278 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         this.var_2283 = param1.readBoolean();
         this.var_2280 = param1.readBoolean();
         this.var_2281 = param1.readInteger();
         this.var_2279 = param1.readInteger();
         this.var_2285 = param1.readBoolean();
         this.var_2275 = param1.readInteger();
         this.var_2284 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1017;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2276;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2278;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2277;
      }
      
      public function get responseType() : int
      {
         return this.var_2282;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2283;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2280;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2281;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2279;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2285;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2275;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2284;
      }
   }
}
