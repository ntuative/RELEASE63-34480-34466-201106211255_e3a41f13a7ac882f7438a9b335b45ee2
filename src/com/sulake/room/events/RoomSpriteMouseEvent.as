package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2076:String = "";
      
      private var var_1733:String = "";
      
      private var var_2593:String = "";
      
      private var var_2594:Number = 0;
      
      private var var_2595:Number = 0;
      
      private var var_2567:Number = 0;
      
      private var var_2568:Number = 0;
      
      private var var_2592:Boolean = false;
      
      private var var_2597:Boolean = false;
      
      private var var_2596:Boolean = false;
      
      private var var_2598:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2076 = param2;
         this.var_1733 = param3;
         this.var_2593 = param4;
         this.var_2594 = param5;
         this.var_2595 = param6;
         this.var_2567 = param7;
         this.var_2568 = param8;
         this.var_2592 = param9;
         this.var_2597 = param10;
         this.var_2596 = param11;
         this.var_2598 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2076;
      }
      
      public function get canvasId() : String
      {
         return this.var_1733;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2593;
      }
      
      public function get screenX() : Number
      {
         return this.var_2594;
      }
      
      public function get screenY() : Number
      {
         return this.var_2595;
      }
      
      public function get localX() : Number
      {
         return this.var_2567;
      }
      
      public function get localY() : Number
      {
         return this.var_2568;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2592;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2597;
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
