package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_205:IWindowContainer;
      
      private var var_3062:int;
      
      private var var_412:RoomEventViewCtrl;
      
      private var var_411:Timer;
      
      private var var_158:RoomSettingsCtrl;
      
      private var var_300:RoomThumbnailCtrl;
      
      private var var_1108:TagRenderer;
      
      private var var_413:IWindowContainer;
      
      private var var_414:IWindowContainer;
      
      private var var_718:IWindowContainer;
      
      private var var_2140:IWindowContainer;
      
      private var var_2141:IWindowContainer;
      
      private var var_1365:IWindowContainer;
      
      private var var_933:ITextWindow;
      
      private var var_1106:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_891:ITextWindow;
      
      private var var_1362:ITextWindow;
      
      private var var_1107:ITextWindow;
      
      private var var_887:ITextWindow;
      
      private var var_1660:ITextWindow;
      
      private var var_299:IWindowContainer;
      
      private var var_889:IWindowContainer;
      
      private var var_1655:IWindowContainer;
      
      private var var_2138:ITextWindow;
      
      private var var_719:ITextWindow;
      
      private var var_2139:IWindow;
      
      private var var_1363:IContainerButtonWindow;
      
      private var var_1361:IContainerButtonWindow;
      
      private var var_1359:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1364:IContainerButtonWindow;
      
      private var var_1659:IButtonWindow;
      
      private var var_1657:IButtonWindow;
      
      private var var_1658:IButtonWindow;
      
      private var var_888:IWindowContainer;
      
      private var var_1360:ITextWindow;
      
      private var var_1109:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_890:IButtonWindow;
      
      private var var_1656:Boolean = false;
      
      private const const_876:int = 75;
      
      private const const_976:int = 3;
      
      private const const_1015:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_412 = new RoomEventViewCtrl(this._navigator);
         this.var_158 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_300 = new RoomThumbnailCtrl(this._navigator);
         this.var_1108 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_158);
         this.var_411 = new Timer(6000,1);
         this.var_411.addEventListener(TimerEvent.TIMER,this.method_5);
      }
      
      public function dispose() : void
      {
         if(this.var_411)
         {
            this.var_411.removeEventListener(TimerEvent.TIMER,this.method_5);
            this.var_411.reset();
            this.var_411 = null;
         }
         this._navigator = null;
         this.var_412 = null;
         this.var_158 = null;
         this.var_300 = null;
         if(this.var_1108)
         {
            this.var_1108.dispose();
            this.var_1108 = null;
         }
         this.var_205 = null;
         this.var_413 = null;
         this.var_414 = null;
         this.var_718 = null;
         this.var_2140 = null;
         this.var_2141 = null;
         this.var_1365 = null;
         this.var_933 = null;
         this.var_1106 = null;
         this._ownerName = null;
         this.var_891 = null;
         this.var_1362 = null;
         this.var_1107 = null;
         this.var_887 = null;
         this.var_1660 = null;
         this.var_299 = null;
         this.var_889 = null;
         this.var_1655 = null;
         this.var_2138 = null;
         this.var_719 = null;
         this.var_2139 = null;
         this.var_1363 = null;
         this.var_1361 = null;
         this.var_1359 = null;
         this._remFavouriteButton = null;
         this.var_1364 = null;
         this.var_1659 = null;
         this.var_1657 = null;
         this.var_1658 = null;
         this.var_888 = null;
         this.var_1360 = null;
         this.var_1109 = null;
         this._buttons = null;
         this.var_890 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_411.reset();
         this.var_412.active = true;
         this.var_158.active = false;
         this.var_300.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_411.reset();
         this.var_158.load(param1);
         this.var_158.active = true;
         this.var_412.active = false;
         this.var_300.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_158.active = true;
         this.var_412.active = false;
         this.var_300.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_411.reset();
         this.var_158.active = false;
         this.var_412.active = false;
         this.var_300.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1656 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_411.reset();
         this.var_412.active = false;
         this.var_158.active = false;
         this.var_300.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_976;
         this._window.y = this.const_876;
         if(this._navigator.configuration.getBoolean("club.status.bar.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_205,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_205.height = Util.getLowestPoint(this.var_205);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_1015;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_413);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_158.refresh(this.var_413);
         this.var_300.refresh(this.var_413);
         Util.moveChildrenToColumn(this.var_413,["room_details","room_buttons"],0,2);
         this.var_413.height = Util.getLowestPoint(this.var_413);
         this.var_413.visible = true;
         Logger.log("XORP: " + this.var_414.visible + ", " + this.var_1365.visible + ", " + this.var_718.visible + ", " + this.var_718.rectangle + ", " + this.var_413.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_299);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_412.refresh(this.var_299);
         if(Util.hasVisibleChildren(this.var_299) && !(this.var_158.active || this.var_300.active))
         {
            Util.moveChildrenToColumn(this.var_299,["event_details","event_buttons"],0,2);
            this.var_299.height = Util.getLowestPoint(this.var_299);
            this.var_299.visible = true;
         }
         else
         {
            this.var_299.visible = false;
         }
         Logger.log("EVENT: " + this.var_299.visible + ", " + this.var_299.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_158.active && !this.var_300.active && !this.var_412.active)
         {
            this.var_888.visible = true;
            this.var_1109.text = this.method_11();
         }
         else
         {
            this.var_888.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_158.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_890)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_890.visible = _loc1_;
            if(this.var_1656)
            {
               this.var_890.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_890.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_158.active || this.var_300.active)
         {
            return;
         }
         this.var_933.text = param1.roomName;
         this.var_933.height = this.var_933.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_891.text = param1.description;
         this.var_1108.refreshTags(this.var_414,param1.tags);
         this.var_891.visible = false;
         if(param1.description != "")
         {
            this.var_891.height = this.var_891.textHeight + 5;
            this.var_891.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1361,"facebook_logo_small",_loc3_,null,0);
         this.var_1361.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1363,"thumb_up",_loc4_,null,0);
         this.var_1363.visible = _loc4_;
         this.var_887.visible = !_loc4_;
         this.var_1660.visible = !_loc4_;
         this.var_1660.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_414,"home",param2,null,0);
         this._navigator.refreshButton(this.var_414,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_414,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_933.y,0);
         this.var_414.visible = true;
         this.var_414.height = Util.getLowestPoint(this.var_414);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_414.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_158.active || this.var_300.active)
         {
            return;
         }
         this.var_1106.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1106.height = this.var_1106.textHeight + 5;
         this.var_1362.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1362.height = this.var_1362.textHeight + 5;
         Util.moveChildrenToColumn(this.var_718,["public_space_name","public_space_desc"],this.var_1106.y,0);
         this.var_718.visible = true;
         this.var_718.height = Math.max(86,Util.getLowestPoint(this.var_718));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_412.active)
         {
            return;
         }
         this.var_2138.text = param1.eventName;
         this.var_719.text = param1.eventDescription;
         this.var_1108.refreshTags(this.var_889,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_719.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_719.height = this.var_719.textHeight + 5;
            this.var_719.y = Util.getLowestPoint(this.var_889) + 2;
            this.var_719.visible = true;
         }
         this.var_889.visible = true;
         this.var_889.height = Util.getLowestPoint(this.var_889);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_158.active || this.var_300.active)
         {
            return;
         }
         this.var_1659.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1359.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1364.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1365.visible = Util.hasVisibleChildren(this.var_1365);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_412.active)
         {
            return;
         }
         this.var_1657.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1658.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1655.visible = Util.hasVisibleChildren(this.var_1655);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_205 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_413 = IWindowContainer(this.find("room_info"));
         this.var_414 = IWindowContainer(this.find("room_details"));
         this.var_718 = IWindowContainer(this.find("public_space_details"));
         this.var_2140 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2141 = IWindowContainer(this.find("rating_cont"));
         this.var_1365 = IWindowContainer(this.find("room_buttons"));
         this.var_933 = ITextWindow(this.find("room_name"));
         this.var_1106 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_891 = ITextWindow(this.find("room_desc"));
         this.var_1362 = ITextWindow(this.find("public_space_desc"));
         this.var_1107 = ITextWindow(this.find("owner_caption"));
         this.var_887 = ITextWindow(this.find("rating_caption"));
         this.var_1660 = ITextWindow(this.find("rating_txt"));
         this.var_299 = IWindowContainer(this.find("event_info"));
         this.var_889 = IWindowContainer(this.find("event_details"));
         this.var_1655 = IWindowContainer(this.find("event_buttons"));
         this.var_2138 = ITextWindow(this.find("event_name"));
         this.var_719 = ITextWindow(this.find("event_desc"));
         this.var_1361 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1363 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2139 = this.find("staff_pick_button");
         this.var_1359 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1364 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1659 = IButtonWindow(this.find("room_settings_button"));
         this.var_1657 = IButtonWindow(this.find("create_event_button"));
         this.var_1658 = IButtonWindow(this.find("edit_event_button"));
         this.var_888 = IWindowContainer(this.find("embed_info"));
         this.var_1360 = ITextWindow(this.find("embed_info_txt"));
         this.var_1109 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_890 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1359,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1659,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1364,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1657,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1658,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1109,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1363,this.onThumbUp);
         this.addMouseClickListener(this.var_2139,this.onStaffPick);
         this.addMouseClickListener(this.var_1361,this.onFacebookLike);
         this.addMouseClickListener(this.var_890,this.onZoomClick);
         this._navigator.refreshButton(this.var_1359,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1364,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_413,this.onHover);
         this.addMouseOverListener(this.var_299,this.onHover);
         this.var_1107.width = this.var_1107.textWidth;
         Util.moveChildrenToRow(this.var_2140,["owner_caption","owner_name"],this.var_1107.x,this.var_1107.y,3);
         this.var_887.width = this.var_887.textWidth;
         Util.moveChildrenToRow(this.var_2141,["rating_caption","rating_txt"],this.var_887.x,this.var_887.y,3);
         this.var_1360.height = this.var_1360.textHeight + 5;
         Util.moveChildrenToColumn(this.var_888,["embed_info_txt","embed_src_txt"],this.var_1360.y,2);
         this.var_888.height = Util.getLowestPoint(this.var_888) + 5;
         this.var_3062 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.method_5(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1109.setSelection(0,this.var_1109.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_377));
         this.var_1656 = !this.var_1656;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_411.reset();
      }
      
      private function method_5(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_158 != null)
         {
            this.var_158.resetView();
         }
      }
      
      private function method_11() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
