package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_982:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_673:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_982);
         this.var_673 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_673;
      }
   }
}
