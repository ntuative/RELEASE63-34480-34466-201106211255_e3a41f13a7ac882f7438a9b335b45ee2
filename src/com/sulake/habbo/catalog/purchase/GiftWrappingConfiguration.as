package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1664:Boolean = false;
      
      private var var_1953:int;
      
      private var var_1747:Array;
      
      private var var_807:Array;
      
      private var var_809:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1664 = _loc2_.isWrappingEnabled;
         this.var_1953 = _loc2_.wrappingPrice;
         this.var_1747 = _loc2_.stuffTypes;
         this.var_807 = _loc2_.boxTypes;
         this.var_809 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1664;
      }
      
      public function get price() : int
      {
         return this.var_1953;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1747;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_807;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_809;
      }
   }
}
