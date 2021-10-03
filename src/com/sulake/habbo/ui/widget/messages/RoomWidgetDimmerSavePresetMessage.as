package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_781:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2364:int;
      
      private var var_2363:int;
      
      private var _color:uint;
      
      private var var_1227:int;
      
      private var var_2362:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_781);
         this.var_2364 = param1;
         this.var_2363 = param2;
         this._color = param3;
         this.var_1227 = param4;
         this.var_2362 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2364;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2363;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1227;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2362;
      }
   }
}
