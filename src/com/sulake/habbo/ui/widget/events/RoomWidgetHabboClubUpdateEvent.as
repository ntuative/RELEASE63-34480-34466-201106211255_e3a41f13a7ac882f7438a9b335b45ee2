package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_246:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2298:int = 0;
      
      private var var_2295:int = 0;
      
      private var var_2296:int = 0;
      
      private var var_2297:Boolean = false;
      
      private var var_1722:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_246,param6,param7);
         this.var_2298 = param1;
         this.var_2295 = param2;
         this.var_2296 = param3;
         this.var_2297 = param4;
         this.var_1722 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2298;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2295;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2296;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2297;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1722;
      }
   }
}
