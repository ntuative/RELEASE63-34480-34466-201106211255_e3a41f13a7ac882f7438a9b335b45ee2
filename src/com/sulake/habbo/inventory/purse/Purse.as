package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1938:int = 0;
      
      private var var_1937:int = 0;
      
      private var var_2719:int = 0;
      
      private var var_2720:Boolean = false;
      
      private var var_2280:Boolean = false;
      
      private var var_2662:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1938 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1937 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2719 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2720 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2662 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1938;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1937;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2719;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2720;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2280;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2662;
      }
   }
}
