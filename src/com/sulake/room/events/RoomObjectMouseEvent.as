package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_160:String = "ROE_MOUSE_CLICK";
      
      public static const const_193:String = "ROE_MOUSE_ENTER";
      
      public static const const_572:String = "ROE_MOUSE_MOVE";
      
      public static const const_183:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2198:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_641:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2076:String = "";
      
      private var var_2597:Boolean;
      
      private var var_2592:Boolean;
      
      private var var_2596:Boolean;
      
      private var var_2598:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2076 = param2;
         this.var_2597 = param5;
         this.var_2592 = param6;
         this.var_2596 = param7;
         this.var_2598 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2076;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2597;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2592;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2596;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2598;
      }
   }
}
