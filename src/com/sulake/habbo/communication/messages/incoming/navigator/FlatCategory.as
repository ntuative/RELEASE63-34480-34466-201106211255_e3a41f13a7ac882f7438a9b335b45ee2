package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1942:int;
      
      private var var_2630:String;
      
      private var var_326:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1942 = param1.readInteger();
         this.var_2630 = param1.readString();
         this.var_326 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1942;
      }
      
      public function get nodeName() : String
      {
         return this.var_2630;
      }
      
      public function get visible() : Boolean
      {
         return this.var_326;
      }
   }
}
