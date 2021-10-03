package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_999:Array;
      
      private var var_2344:String;
      
      private var var_2345:String;
      
      private var var_2343:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_999 = param1;
         this.var_2344 = param2;
         this.var_2345 = param3;
         this.var_2343 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_999;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2344;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2345;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2343;
      }
   }
}
