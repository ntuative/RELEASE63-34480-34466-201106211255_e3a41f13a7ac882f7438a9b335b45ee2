package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1263:int;
      
      private var var_2827:Boolean;
      
      private var var_2779:Boolean;
      
      private var var_2826:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1263 = param1.readInteger();
         this.var_2827 = param1.readBoolean();
         this.var_2826 = param1.readInteger();
         this.var_2779 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2827;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2779;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2826;
      }
   }
}
