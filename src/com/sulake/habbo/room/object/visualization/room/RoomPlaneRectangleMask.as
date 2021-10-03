package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2763:Number = 0.0;
      
      private var var_2762:Number = 0.0;
      
      private var var_2760:Number = 0.0;
      
      private var var_2761:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2763 = param1;
         this.var_2762 = param2;
         this.var_2760 = param3;
         this.var_2761 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2763;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2762;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2760;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2761;
      }
   }
}
