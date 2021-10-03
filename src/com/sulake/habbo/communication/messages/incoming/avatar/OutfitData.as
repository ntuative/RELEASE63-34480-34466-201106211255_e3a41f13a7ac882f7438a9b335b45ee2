package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2147:int;
      
      private var var_2617:String;
      
      private var var_1112:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2147 = param1.readInteger();
         this.var_2617 = param1.readString();
         this.var_1112 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2147;
      }
      
      public function get figureString() : String
      {
         return this.var_2617;
      }
      
      public function get gender() : String
      {
         return this.var_1112;
      }
   }
}
