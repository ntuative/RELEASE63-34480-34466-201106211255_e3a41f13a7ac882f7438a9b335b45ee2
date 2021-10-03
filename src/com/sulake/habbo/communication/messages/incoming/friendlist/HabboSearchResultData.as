package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2271:int;
      
      private var var_2009:String;
      
      private var var_2339:String;
      
      private var var_2340:Boolean;
      
      private var var_2338:Boolean;
      
      private var var_2342:int;
      
      private var var_2337:String;
      
      private var var_2341:String;
      
      private var var_1804:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2271 = param1.readInteger();
         this.var_2009 = param1.readString();
         this.var_2339 = param1.readString();
         this.var_2340 = param1.readBoolean();
         this.var_2338 = param1.readBoolean();
         param1.readString();
         this.var_2342 = param1.readInteger();
         this.var_2337 = param1.readString();
         this.var_2341 = param1.readString();
         this.var_1804 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2271;
      }
      
      public function get avatarName() : String
      {
         return this.var_2009;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2339;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2340;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2338;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2342;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2337;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2341;
      }
      
      public function get realName() : String
      {
         return this.var_1804;
      }
   }
}
