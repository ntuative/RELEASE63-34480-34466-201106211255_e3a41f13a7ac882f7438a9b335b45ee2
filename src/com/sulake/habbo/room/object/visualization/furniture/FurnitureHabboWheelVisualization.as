package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1121:int = 10;
      
      private static const const_711:int = 20;
      
      private static const const_1616:int = 31;
      
      private static const const_1576:int = 32;
       
      
      private var var_335:Array;
      
      private var var_880:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_335 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_880)
            {
               this.var_880 = true;
               this.var_335 = new Array();
               this.var_335.push(const_1616);
               this.var_335.push(const_1576);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1121)
         {
            if(this.var_880)
            {
               this.var_880 = false;
               this.var_335 = new Array();
               this.var_335.push(const_1121 + param1);
               this.var_335.push(const_711 + param1);
               this.var_335.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_335.length > 0)
            {
               super.setAnimation(this.var_335.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
