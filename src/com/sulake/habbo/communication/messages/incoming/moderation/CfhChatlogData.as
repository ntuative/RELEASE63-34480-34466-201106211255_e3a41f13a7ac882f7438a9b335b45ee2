package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1886:int;
      
      private var var_2585:int;
      
      private var var_1501:int;
      
      private var var_2586:int;
      
      private var var_136:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1886 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_1501 = param1.readInteger();
         this.var_2586 = param1.readInteger();
         this.var_136 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1886);
      }
      
      public function get callId() : int
      {
         return this.var_1886;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2585;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1501;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2586;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_136;
      }
   }
}
