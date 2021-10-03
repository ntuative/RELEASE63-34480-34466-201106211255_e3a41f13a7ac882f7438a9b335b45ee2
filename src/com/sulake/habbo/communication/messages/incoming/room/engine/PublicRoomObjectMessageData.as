package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_449:int = 0;
      
      private var var_522:int = 0;
      
      private var var_627:int = 0;
      
      private var var_199:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_199 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_199)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_199)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_199)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_174 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_175;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_175 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_449;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_449 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_522;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_522 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_627;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_627 = param1;
         }
      }
   }
}
