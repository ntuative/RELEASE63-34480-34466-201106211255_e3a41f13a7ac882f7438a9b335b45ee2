package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_616:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_630:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
      
      public static const const_392:String = "RWOPPUE_OPEN_PET_PACKAGE_UPDATE_PET_IMAGE";
       
      
      private var var_234:int = -1;
      
      private var var_47:BitmapData = null;
      
      private var var_2110:int = 0;
      
      private var var_1952:String = null;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_234 = param2;
         this.var_47 = param3;
         this.var_2110 = param4;
         this.var_1952 = param5;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2110;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1952;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get objectId() : int
      {
         return this.var_234;
      }
   }
}
