package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_450:Vector3D;
      
      private var var_2084:Vector3D;
      
      private var var_2891:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_2084 = new Vector3D();
         super();
         this.var_450 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2891 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_450;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_2084;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2891)
         {
            this.var_2084 = param1.vectorMultiplication(this.var_450);
         }
      }
   }
}
