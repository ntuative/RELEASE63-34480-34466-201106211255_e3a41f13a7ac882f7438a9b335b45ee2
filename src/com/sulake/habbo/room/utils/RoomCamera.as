package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1631:Number = 12;
       
      
      private var var_2793:int = -1;
      
      private var var_2787:int = -2;
      
      private var var_225:Vector3d = null;
      
      private var var_1311:Number = 0;
      
      private var var_1601:Number = 0;
      
      private var var_2027:Boolean = false;
      
      private var var_204:Vector3d = null;
      
      private var var_2030:Vector3d;
      
      private var var_2792:Boolean = false;
      
      private var var_2788:Boolean = false;
      
      private var var_2790:Boolean = false;
      
      private var var_2791:Boolean = false;
      
      private var var_2796:int = 0;
      
      private var var_2789:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2794:int = 0;
      
      private var var_2795:int = 0;
      
      private var var_1990:int = -1;
      
      private var var_2029:int = 0;
      
      private var var_2028:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2030 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_204;
      }
      
      public function get targetId() : int
      {
         return this.var_2793;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2787;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2030;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2792;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2788;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2790;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2791;
      }
      
      public function get screenWd() : int
      {
         return this.var_2796;
      }
      
      public function get screenHt() : int
      {
         return this.var_2789;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2794;
      }
      
      public function get roomHt() : int
      {
         return this.var_2795;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1990;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_225 != null && this.var_204 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2793 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2030.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2787 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2792 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2788 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2790 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2791 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2796 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2789 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2028 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2795 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1990 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_225 == null)
         {
            this.var_225 = new Vector3d();
         }
         if(this.var_225.x != param1.x || this.var_225.y != param1.y || this.var_225.z != param1.z)
         {
            this.var_225.assign(param1);
            this.var_2029 = 0;
            _loc2_ = Vector3d.dif(this.var_225,this.var_204);
            this.var_1311 = _loc2_.length;
            this.var_2027 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_225 = null;
         this.var_204 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_204 != null)
         {
            return;
         }
         this.var_204 = new Vector3d();
         this.var_204.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_204 == null)
         {
            this.var_204 = new Vector3d();
         }
         this.var_204.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_225 != null && this.var_204 != null)
         {
            ++this.var_2029;
            if(this.var_2028)
            {
               this.var_2028 = false;
               this.var_204 = this.var_225;
               this.var_225 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_225,this.var_204);
            if(_loc3_.length > this.var_1311)
            {
               this.var_1311 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_204 = this.var_225;
               this.var_225 = null;
               this.var_1601 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1311);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1311 / const_1631;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2027)
               {
                  if(_loc7_ < this.var_1601)
                  {
                     _loc7_ = this.var_1601;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2027 = false;
                  }
               }
               this.var_1601 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_204 = Vector3d.sum(this.var_204,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1990 = -1;
      }
   }
}
