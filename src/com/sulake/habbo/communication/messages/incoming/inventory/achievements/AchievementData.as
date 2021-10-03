package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1370:int;
      
      private var var_1941:String;
      
      private var var_2148:int;
      
      private var var_2782:int;
      
      private var var_2780:int;
      
      private var var_2149:int;
      
      private var var_2150:Boolean;
      
      private var _category:String;
      
      private var var_2962:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1370 = param1.readInteger();
         this.var_1941 = param1.readString();
         this.var_2148 = Math.max(1,param1.readInteger());
         this.var_2782 = param1.readInteger();
         this.var_2780 = param1.readInteger();
         this.var_2149 = param1.readInteger();
         this.var_2150 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2962 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1941;
      }
      
      public function get level() : int
      {
         return this.var_1370;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2148;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2782;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2780;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2149;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2150;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2962;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1370 > 1 || this.var_2150;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2149 = this.var_2148;
      }
   }
}
