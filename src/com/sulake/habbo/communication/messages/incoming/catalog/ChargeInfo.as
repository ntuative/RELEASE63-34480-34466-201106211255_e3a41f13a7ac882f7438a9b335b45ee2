package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2257:int;
      
      private var var_2686:int;
      
      private var var_1377:int;
      
      private var var_1378:int;
      
      private var var_2167:int;
      
      private var var_2687:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2257 = param1.readInteger();
         this.var_2686 = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_1378 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         this.var_2687 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2257;
      }
      
      public function get charges() : int
      {
         return this.var_2686;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1377;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1378;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2687;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2167;
      }
   }
}
