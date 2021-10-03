package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_585:int = 0;
      
      public static const const_220:int = 1;
      
      public static const const_133:int = 2;
      
      public static const const_845:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1757:String;
      
      private var var_2475:int;
      
      private var var_1635:int;
      
      private var var_2478:int;
      
      private var var_2758:int;
      
      private var var_913:Array;
      
      private var var_2481:Array;
      
      private var var_2759:int;
      
      private var var_2482:Boolean;
      
      private var var_2476:Boolean;
      
      private var var_2474:Boolean;
      
      private var var_2477:Boolean;
      
      private var var_2480:int;
      
      private var var_2479:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2482;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2482 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2476;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2476 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2474;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2474 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2477;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2480;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2480 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2479;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2479 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1757;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1757 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2475;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2475 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1635;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1635 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2478;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2478 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2758;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2758 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_913;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_913 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2481;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2481 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2759;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2759 = param1;
      }
   }
}
