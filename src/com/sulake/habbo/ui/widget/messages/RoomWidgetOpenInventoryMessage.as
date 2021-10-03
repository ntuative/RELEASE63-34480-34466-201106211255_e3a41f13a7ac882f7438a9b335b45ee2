package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_823:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1833:String = "inventory_effects";
      
      public static const const_1242:String = "inventory_badges";
      
      public static const const_1732:String = "inventory_clothes";
      
      public static const const_1960:String = "inventory_furniture";
       
      
      private var var_2814:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_823);
         this.var_2814 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2814;
      }
   }
}
