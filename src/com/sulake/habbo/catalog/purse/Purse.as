package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2661:int = 0;
      
      private var var_1555:Dictionary;
      
      private var var_1938:int = 0;
      
      private var var_1937:int = 0;
      
      private var var_2280:Boolean = false;
      
      private var var_2281:int = 0;
      
      private var var_2279:int = 0;
      
      private var var_2662:Boolean = false;
      
      public function Purse()
      {
         this.var_1555 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2661;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1938;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1938 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1937;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1937 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1938 > 0 || this.var_1937 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2280;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2662;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2662 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2281;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2281 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2279;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2279 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1555;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1555 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1555[param1];
      }
   }
}
