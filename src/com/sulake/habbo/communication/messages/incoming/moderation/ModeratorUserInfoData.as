package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2583:int;
      
      private var var_2579:int;
      
      private var var_830:Boolean;
      
      private var var_2580:int;
      
      private var var_2582:int;
      
      private var var_2581:int;
      
      private var var_2584:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2583 = param1.readInteger();
         this.var_2579 = param1.readInteger();
         this.var_830 = param1.readBoolean();
         this.var_2580 = param1.readInteger();
         this.var_2582 = param1.readInteger();
         this.var_2581 = param1.readInteger();
         this.var_2584 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2583;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2579;
      }
      
      public function get online() : Boolean
      {
         return this.var_830;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2580;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2582;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2581;
      }
      
      public function get banCount() : int
      {
         return this.var_2584;
      }
   }
}
