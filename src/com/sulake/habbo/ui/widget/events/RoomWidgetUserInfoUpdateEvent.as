package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_110:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_165:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_888:int = 2;
      
      public static const const_838:int = 3;
      
      public static const const_1789:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1806:String = "";
      
      private var var_2317:int;
      
      private var var_2310:int = 0;
      
      private var var_2319:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_249:Array;
      
      private var var_1449:int = 0;
      
      private var var_2313:String = "";
      
      private var var_2316:int = 0;
      
      private var var_2322:int = 0;
      
      private var var_1983:Boolean = false;
      
      private var var_1804:String = "";
      
      private var var_2222:Boolean = false;
      
      private var var_2314:Boolean = false;
      
      private var var_2309:Boolean = true;
      
      private var var_1153:int = 0;
      
      private var var_2318:Boolean = false;
      
      private var var_2312:Boolean = false;
      
      private var var_2321:Boolean = false;
      
      private var var_2311:Boolean = false;
      
      private var var_2315:Boolean = false;
      
      private var var_2320:Boolean = false;
      
      private var var_2308:int = 0;
      
      private var var_1981:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_249 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1806 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1806;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2317;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2310;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2319 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2319;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_249 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_249;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1449 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1449;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2313 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2313;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2314 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2314;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1153 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1153;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2318 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2318;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2312 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2312;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2321 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2321;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2311 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2311;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2315 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2315;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2320 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2320;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2308;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2309 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2309;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1981 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1981;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2316;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2322;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1983 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1983;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1804 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1804;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2222 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2222;
      }
   }
}
