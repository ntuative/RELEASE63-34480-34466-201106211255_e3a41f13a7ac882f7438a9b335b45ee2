package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_49:String = "HTE_TOOLBAR_CLICK";
       
      
      private var var_1943:String;
      
      private var var_2545:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_1943 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_1943;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_2545 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_2545;
      }
   }
}
