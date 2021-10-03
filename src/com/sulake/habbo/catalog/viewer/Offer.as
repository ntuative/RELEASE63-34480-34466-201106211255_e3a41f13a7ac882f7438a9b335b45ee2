package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1913:String = "pricing_model_unknown";
      
      public static const const_389:String = "pricing_model_single";
      
      public static const const_410:String = "pricing_model_multi";
      
      public static const const_487:String = "pricing_model_bundle";
      
      public static const const_1976:String = "price_type_none";
      
      public static const const_891:String = "price_type_credits";
      
      public static const const_1272:String = "price_type_activitypoints";
      
      public static const const_1385:String = "price_type_credits_and_activitypoints";
       
      
      private var var_902:String;
      
      private var var_1379:String;
      
      private var var_1263:int;
      
      private var var_2168:String;
      
      private var var_1377:int;
      
      private var var_1378:int;
      
      private var var_2167:int;
      
      private var var_417:ICatalogPage;
      
      private var var_726:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1722:int = 0;
      
      private var var_2988:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1263 = param1;
         this.var_2168 = param2;
         this.var_1377 = param3;
         this.var_1378 = param4;
         this.var_2167 = param5;
         this.var_417 = param8;
         this.var_1722 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1722;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_417;
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
      
      public function get activityPointType() : int
      {
         return this.var_2167;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_726;
      }
      
      public function get pricingModel() : String
      {
         return this.var_902;
      }
      
      public function get priceType() : String
      {
         return this.var_1379;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2988;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2988 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1263 = 0;
         this.var_2168 = "";
         this.var_1377 = 0;
         this.var_1378 = 0;
         this.var_2167 = 0;
         this.var_417 = null;
         if(this.var_726 != null)
         {
            this.var_726.dispose();
            this.var_726 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_902)
         {
            case const_389:
               this.var_726 = new SingleProductContainer(this,param1);
               break;
            case const_410:
               this.var_726 = new MultiProductContainer(this,param1);
               break;
            case const_487:
               this.var_726 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_902);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_902 = const_389;
            }
            else
            {
               this.var_902 = const_410;
            }
         }
         else if(param1.length > 1)
         {
            this.var_902 = const_487;
         }
         else
         {
            this.var_902 = const_1913;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1377 > 0 && this.var_1378 > 0)
         {
            this.var_1379 = const_1385;
         }
         else if(this.var_1377 > 0)
         {
            this.var_1379 = const_891;
         }
         else if(this.var_1378 > 0)
         {
            this.var_1379 = const_1272;
         }
         else
         {
            this.var_1379 = const_1976;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_417.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_726.products)
         {
            _loc4_ = this.var_417.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
