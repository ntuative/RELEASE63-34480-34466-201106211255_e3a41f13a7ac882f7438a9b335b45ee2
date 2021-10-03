package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_949:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1298:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2107:String = "RWOCM_PIXELS";
      
      public static const const_2157:String = "RWOCM_CREDITS";
      
      public static const const_2125:String = "RWOCM_SHELLS";
       
      
      private var var_2716:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_949);
         this.var_2716 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2716;
      }
   }
}
