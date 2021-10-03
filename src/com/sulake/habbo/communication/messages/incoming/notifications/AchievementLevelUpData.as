package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1370:int;
      
      private var var_1912:int;
      
      private var var_2782:int;
      
      private var var_2780:int;
      
      private var var_2709:int;
      
      private var var_1941:int;
      
      private var var_2783:String = "";
      
      private var var_2781:String = "";
      
      private var var_2784:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1370 = param1.readInteger();
         this.var_1941 = param1.readInteger();
         this.var_2783 = param1.readString();
         this.var_1912 = param1.readInteger();
         this.var_2782 = param1.readInteger();
         this.var_2780 = param1.readInteger();
         this.var_2709 = param1.readInteger();
         this.var_2784 = param1.readInteger();
         this.var_2781 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1370;
      }
      
      public function get points() : int
      {
         return this.var_1912;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2782;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2780;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2709;
      }
      
      public function get badgeId() : int
      {
         return this.var_1941;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2783;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2781;
      }
      
      public function get achievementID() : int
      {
         return this.var_2784;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
