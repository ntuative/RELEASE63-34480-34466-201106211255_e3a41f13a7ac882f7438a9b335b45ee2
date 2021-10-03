package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_73:String = "s";
      
      public static const const_181:String = "e";
       
      
      private var var_1612:String;
      
      private var var_2894:int;
      
      private var var_1074:String;
      
      private var var_1613:int;
      
      private var var_2045:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1612 = param1.readString();
         this.var_2894 = param1.readInteger();
         this.var_1074 = param1.readString();
         this.var_1613 = param1.readInteger();
         this.var_2045 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1612;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2894;
      }
      
      public function get extraParam() : String
      {
         return this.var_1074;
      }
      
      public function get productCount() : int
      {
         return this.var_1613;
      }
      
      public function get expiration() : int
      {
         return this.var_2045;
      }
   }
}
