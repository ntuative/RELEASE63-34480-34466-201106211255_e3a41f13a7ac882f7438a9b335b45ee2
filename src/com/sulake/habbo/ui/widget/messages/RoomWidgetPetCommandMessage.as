package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_1010:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_647:String = "RWPCM_PET_COMMAND";
       
      
      private var var_1796:int = 0;
      
      private var var_192:String;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         this.var_1796 = param2;
         this.var_192 = param3;
      }
      
      public function get petId() : int
      {
         return this.var_1796;
      }
      
      public function get value() : String
      {
         return this.var_192;
      }
   }
}
