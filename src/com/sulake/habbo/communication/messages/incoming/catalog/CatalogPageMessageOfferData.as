package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1263:int;
      
      private var var_2168:String;
      
      private var var_1377:int;
      
      private var var_1378:int;
      
      private var var_2167:int;
      
      private var var_1722:int;
      
      private var var_1209:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1263 = param1.readInteger();
         this.var_2168 = param1.readString();
         this.var_1377 = param1.readInteger();
         this.var_1378 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1209 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1209.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1722 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1263;
      }
      
      public function get localizationId() : String
      {
         return this.var_2168;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1377;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1378;
      }
      
      public function get products() : Array
      {
         return this.var_1209;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2167;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1722;
      }
   }
}
