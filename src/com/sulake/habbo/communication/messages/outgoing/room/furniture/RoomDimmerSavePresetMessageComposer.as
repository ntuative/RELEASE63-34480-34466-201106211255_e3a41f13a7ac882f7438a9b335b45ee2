package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2364:int;
      
      private var var_2363:int;
      
      private var var_2659:String;
      
      private var var_2658:int;
      
      private var var_2660:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2364 = param1;
         this.var_2363 = param2;
         this.var_2659 = param3;
         this.var_2658 = param4;
         this.var_2660 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2364,this.var_2363,this.var_2659,this.var_2658,int(this.var_2660)];
      }
      
      public function dispose() : void
      {
      }
   }
}
