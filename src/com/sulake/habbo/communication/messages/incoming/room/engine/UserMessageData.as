package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1393:String = "M";
      
      public static const const_1730:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_449:int = 0;
      
      private var _name:String = "";
      
      private var var_1686:int = 0;
      
      private var var_1095:String = "";
      
      private var _figure:String = "";
      
      private var var_2588:String = "";
      
      private var var_2317:int;
      
      private var var_2310:int = 0;
      
      private var var_2591:String = "";
      
      private var var_2590:int = 0;
      
      private var var_2319:int = 0;
      
      private var var_2589:String = "";
      
      private var var_199:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_199 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_1686;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_1686 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1095;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_1095 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_199)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2588;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2588 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2317;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2317 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2310;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2310 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2591;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2591 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2590;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2590 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2319;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2319 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2589;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2589 = param1;
         }
      }
   }
}
