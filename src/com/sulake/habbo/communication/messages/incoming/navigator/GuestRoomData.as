package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_361:int;
      
      private var var_865:Boolean;
      
      private var var_933:String;
      
      private var _ownerName:String;
      
      private var var_2475:int;
      
      private var var_2858:int;
      
      private var var_2866:int;
      
      private var var_1757:String;
      
      private var var_2862:int;
      
      private var var_2494:Boolean;
      
      private var var_811:int;
      
      private var var_1635:int;
      
      private var var_2864:String;
      
      private var var_913:Array;
      
      private var var_2863:RoomThumbnailData;
      
      private var var_2482:Boolean;
      
      private var var_2865:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_913 = new Array();
         super();
         this.var_361 = param1.readInteger();
         this.var_865 = param1.readBoolean();
         this.var_933 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2475 = param1.readInteger();
         this.var_2858 = param1.readInteger();
         this.var_2866 = param1.readInteger();
         this.var_1757 = param1.readString();
         this.var_2862 = param1.readInteger();
         this.var_2494 = param1.readBoolean();
         this.var_811 = param1.readInteger();
         this.var_1635 = param1.readInteger();
         this.var_2864 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_913.push(_loc4_);
            _loc3_++;
         }
         this.var_2863 = new RoomThumbnailData(param1);
         this.var_2482 = param1.readBoolean();
         this.var_2865 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_913 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_361;
      }
      
      public function get event() : Boolean
      {
         return this.var_865;
      }
      
      public function get roomName() : String
      {
         return this.var_933;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2475;
      }
      
      public function get userCount() : int
      {
         return this.var_2858;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2866;
      }
      
      public function get description() : String
      {
         return this.var_1757;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2862;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2494;
      }
      
      public function get score() : int
      {
         return this.var_811;
      }
      
      public function get categoryId() : int
      {
         return this.var_1635;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2864;
      }
      
      public function get tags() : Array
      {
         return this.var_913;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2863;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2482;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2865;
      }
   }
}
