package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_742:String = "";
      
      public static const const_396:int = 0;
      
      public static const const_551:int = 255;
      
      public static const const_747:Boolean = false;
      
      public static const const_629:int = 0;
      
      public static const const_595:int = 0;
      
      public static const const_429:int = 0;
      
      public static const const_1392:int = 1;
      
      public static const const_1389:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2605:String = "";
      
      private var var_2174:int = 0;
      
      private var var_2577:int = 255;
      
      private var var_2849:Boolean = false;
      
      private var var_2846:int = 0;
      
      private var var_2847:int = 0;
      
      private var var_2848:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2605 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2605;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2174 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2174;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2577 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2577;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2849 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2849;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2846 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2846;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2847 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2847;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2848 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2848;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
