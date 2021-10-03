package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2091:int = 16777215;
      
      public static const const_1174:int = 8191;
      
      public static const const_1198:int = 8191;
      
      public static const const_2253:int = 1;
      
      public static const const_1202:int = 1;
      
      public static const const_1353:int = 1;
      
      private static var var_579:uint = 0;
      
      private static var var_580:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1174)
         {
            param2 = const_1174;
         }
         else if(param2 < const_1202)
         {
            param2 = const_1202;
         }
         if(param3 > const_1198)
         {
            param3 = const_1198;
         }
         else if(param3 < const_1353)
         {
            param3 = const_1353;
         }
         super(param2,param3,param4,param5);
         ++var_579;
         var_580 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_579;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_580;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_580 -= width * height * 4;
            --var_579;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
