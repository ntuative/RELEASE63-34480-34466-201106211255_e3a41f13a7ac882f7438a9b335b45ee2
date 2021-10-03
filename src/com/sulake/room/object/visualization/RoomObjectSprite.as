package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1248:int = 0;
       
      
      private var var_431:BitmapData = null;
      
      private var var_2603:String = "";
      
      private var var_326:Boolean = true;
      
      private var var_2605:String = "";
      
      private var var_2577:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1895:String;
      
      private var var_1543:Boolean = false;
      
      private var var_1544:Boolean = false;
      
      private var _offset:Point;
      
      private var var_279:int = 0;
      
      private var _height:int = 0;
      
      private var var_1223:Number = 0;
      
      private var var_2607:Boolean = false;
      
      private var var_2604:Boolean = true;
      
      private var var_2601:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2606:int = 0;
      
      private var var_2602:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1895 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2606 = var_1248++;
      }
      
      public function dispose() : void
      {
         this.var_431 = null;
         this.var_279 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_431;
      }
      
      public function get assetName() : String
      {
         return this.var_2603;
      }
      
      public function get visible() : Boolean
      {
         return this.var_326;
      }
      
      public function get tag() : String
      {
         return this.var_2605;
      }
      
      public function get alpha() : int
      {
         return this.var_2577;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1895;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1544;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1543;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_279;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1223;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2607;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2604;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2601;
      }
      
      public function get instanceId() : int
      {
         return this.var_2606;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2602;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_279 = param1.width;
            this._height = param1.height;
         }
         this.var_431 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2603 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_326 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2605 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2577 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1895 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2602 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1543 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1544 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1223 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2607 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2604 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2601 = param1;
         ++this._updateID;
      }
   }
}
