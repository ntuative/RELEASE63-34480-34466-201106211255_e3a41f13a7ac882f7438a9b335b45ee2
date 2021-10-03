package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1263:int;
      
      private var _furniId:int;
      
      private var var_2745:int;
      
      private var var_2220:String;
      
      private var var_1953:int;
      
      private var var_422:int;
      
      private var var_2747:int = -1;
      
      private var var_2304:int;
      
      private var var_2003:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1263 = param1;
         this._furniId = param2;
         this.var_2745 = param3;
         this.var_2220 = param4;
         this.var_1953 = param5;
         this.var_422 = param6;
         this.var_2747 = param7;
         this.var_2304 = param8;
         this.var_2003 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2745;
      }
      
      public function get stuffData() : String
      {
         return this.var_2220;
      }
      
      public function get price() : int
      {
         return this.var_1953;
      }
      
      public function get status() : int
      {
         return this.var_422;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2747;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2304;
      }
      
      public function get offerCount() : int
      {
         return this.var_2003;
      }
   }
}
