package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_802:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1748:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_802,false,false);
         this.var_1748 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1748;
      }
   }
}
