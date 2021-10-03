package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_126:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1731:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_126);
         this.var_1731 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1731;
      }
   }
}
