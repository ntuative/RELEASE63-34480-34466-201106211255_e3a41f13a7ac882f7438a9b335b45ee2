package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2046:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_209:MsgWithRequestId;
      
      private var var_609:RoomEventData;
      
      private var var_2265:Boolean;
      
      private var var_2263:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2271:int;
      
      private var var_265:GuestRoomData;
      
      private var var_926:PublicRoomShortData;
      
      private var var_2268:int;
      
      private var var_2270:Boolean;
      
      private var var_2267:int;
      
      private var var_2272:Boolean;
      
      private var var_1708:int;
      
      private var var_2274:Boolean;
      
      private var var_1422:Array;
      
      private var var_1423:Array;
      
      private var var_2269:int;
      
      private var var_1424:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1145:Boolean;
      
      private var var_2266:int;
      
      private var var_2264:Boolean;
      
      private var var_2273:int = 0;
      
      private var var_1709:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1422 = new Array();
         this.var_1423 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_265 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_265 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_926 = null;
         this.var_265 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_926 = param1.publicSpace;
            this.var_609 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_609 != null)
         {
            this.var_609.dispose();
            this.var_609 = null;
         }
         if(this.var_926 != null)
         {
            this.var_926.dispose();
            this.var_926 = null;
         }
         if(this.var_265 != null)
         {
            this.var_265.dispose();
            this.var_265 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_265 != null)
         {
            this.var_265.dispose();
         }
         this.var_265 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_609 != null)
         {
            this.var_609.dispose();
         }
         this.var_609 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_209 != null && this.var_209 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_209 != null && this.var_209 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_209 != null && this.var_209 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_209 = param1;
         this.var_1709 = param1.ad;
         this.var_1145 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_209 = param1;
         this.var_1145 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_209 = param1;
         this.var_1145 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_209 == null)
         {
            return;
         }
         this.var_209.dispose();
         this.var_209 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_1709 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_1709;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_209 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_209 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_209 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_609;
      }
      
      public function get avatarId() : int
      {
         return this.var_2271;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2265;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2263;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_265;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_926;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2270;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2267;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1708;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2272;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2266;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2268;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2274;
      }
      
      public function get adIndex() : int
      {
         return this.var_2273;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2264;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2270 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2263 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2272 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1708 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2266 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2274 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2273 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2264 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1422 = param1;
         this.var_1423 = new Array();
         for each(_loc2_ in this.var_1422)
         {
            if(_loc2_.visible)
            {
               this.var_1423.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1422;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1423;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2269 = param1.limit;
         this.var_1424 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1424 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_265.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_265 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_265.flatId;
         return this.var_1708 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1424 >= this.var_2269;
      }
      
      public function startLoading() : void
      {
         this.var_1145 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1145;
      }
   }
}
