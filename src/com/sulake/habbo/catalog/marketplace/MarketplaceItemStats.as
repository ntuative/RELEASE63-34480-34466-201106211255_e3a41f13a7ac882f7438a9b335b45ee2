package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2304:int;
      
      private var var_2302:int;
      
      private var var_2303:int;
      
      private var _dayOffsets:Array;
      
      private var var_1955:Array;
      
      private var var_1954:Array;
      
      private var var_2301:int;
      
      private var var_2300:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2304;
      }
      
      public function get offerCount() : int
      {
         return this.var_2302;
      }
      
      public function get historyLength() : int
      {
         return this.var_2303;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1955;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1954;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2301;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2300;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2304 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2302 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1955 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1954 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2301 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2300 = param1;
      }
   }
}
