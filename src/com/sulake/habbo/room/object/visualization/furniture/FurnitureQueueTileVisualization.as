package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1576:int = 3;
      
      private static const const_1475:int = 2;
      
      private static const const_1474:int = 1;
      
      private static const const_1476:int = 15;
       
      
      private var var_335:Array;
      
      private var var_1189:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_335 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1475)
         {
            this.var_335 = new Array();
            this.var_335.push(const_1474);
            this.var_1189 = const_1476;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1189 > 0)
         {
            --this.var_1189;
         }
         if(this.var_1189 == 0)
         {
            if(this.var_335.length > 0)
            {
               super.setAnimation(this.var_335.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
