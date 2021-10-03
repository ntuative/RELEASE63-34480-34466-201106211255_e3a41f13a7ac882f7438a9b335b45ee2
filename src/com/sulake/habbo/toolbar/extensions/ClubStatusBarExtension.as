package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetHabboClubExtendOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryHabboClubEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ClubStatusBarExtension
   {
      
      private static const const_708:int = 0;
      
      private static const const_707:int = 1;
      
      private static const const_709:int = 2;
      
      private static const const_705:int = 3;
      
      private static const const_706:int = 4;
      
      private static const const_876:int = 34;
      
      private static const const_976:int = 3;
      
      private static const const_1112:int = 13;
      
      private static const const_1111:int = 14;
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_13:IHabboInventory;
      
      private var _catalog:IHabboCatalog;
      
      private var _connection:IConnection;
      
      private var _view:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var _state:int;
      
      private var var_223:IBitmapWrapperWindow;
      
      private var var_1032:Timer;
      
      private var var_1570:int = 0;
      
      private var var_2710:int;
      
      private var var_1279:Timer;
      
      private var var_553:IItemListWindow;
      
      private var var_1969:IIconWindow;
      
      public function ClubStatusBarExtension(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IEventDispatcher, param4:IHabboConfigurationManager, param5:ICoreLocalizationManager, param6:IHabboInventory, param7:IHabboCatalog, param8:IConnection)
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         super();
         this._windowManager = param1;
         this._assets = param2;
         this._events = param3;
         this._config = param4;
         this._localization = param5;
         this.var_13 = param6;
         this._catalog = param7;
         this._connection = param8;
         var _loc9_:XmlAsset = param2.getAssetByName("club_bar_xml") as XmlAsset;
         if(_loc9_)
         {
            this._view = param1.buildFromXML(_loc9_.content as XML,1) as IWindowContainer;
            if(this._view)
            {
               this.var_223 = this._view.findChildByName("flashing_animation") as IBitmapWrapperWindow;
               if(this.var_223)
               {
                  _loc11_ = this._assets.getAssetByName("extend_hilite_png") as IAsset;
                  if(_loc11_)
                  {
                     _loc12_ = _loc11_.content as BitmapData;
                     if(_loc12_)
                     {
                        this.var_223.bitmap = _loc12_.clone();
                        this.var_223.width = _loc12_.width;
                        this.var_223.height = _loc12_.height;
                     }
                  }
               }
               _loc10_ = this._view.findChildByName("text_region") as IRegionWindow;
               if(_loc10_)
               {
                  _loc10_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTextRegionClicked);
               }
               this.var_553 = this._view.findChildByName("items") as IItemListWindow;
               if(this.var_553)
               {
                  this.var_1969 = this.var_553.getListItemAt(1) as IIconWindow;
               }
               this.assignState();
               this.rePosition();
               this._view.addEventListener(WindowEvent.const_1326,this.onActivate);
            }
         }
         if(this.var_13)
         {
            this.var_13.events.addEventListener(HabboInventoryHabboClubEvent.const_405,this.onClubChanged);
         }
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.animate(false);
            this.clearAnimation();
            this.var_223 = null;
            if(this.var_13)
            {
               this.var_13.events.removeEventListener(HabboInventoryHabboClubEvent.const_405,this.onClubChanged);
               this.var_13 = null;
            }
            this._catalog = null;
            this._localization = null;
            this._config = null;
            this._assets = null;
            this._events = null;
            this._disposed = true;
         }
      }
      
      private function onActivate(param1:WindowEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function onTextRegionClicked(param1:WindowMouseEvent) : void
      {
         switch(this._state)
         {
            case const_708:
               if(this._connection)
               {
                  this._connection.send(new EventLogMessageComposer("ClubBar","noclub","client.club.status.clicked"));
               }
               this._catalog.openCatalogPage(CatalogPageName.const_131,true);
               break;
            case const_707:
            case const_705:
               if(this._connection)
               {
                  this._connection.send(new EventLogMessageComposer("ClubBar","valid","client.club.status.clicked"));
               }
               this._catalog.openCatalogPage(CatalogPageName.const_131,true);
               break;
            case const_709:
            case const_706:
               if(this._connection)
               {
                  this._connection.send(new EventLogMessageComposer("ClubBar","discount","client.club.status.clicked"));
                  this._connection.send(new GetHabboClubExtendOfferMessageComposer());
               }
         }
      }
      
      private function rePosition() : void
      {
         var _loc1_:IWindowContainer = this._view.desktop;
         this._view.x = _loc1_.width - this._view.width - const_976;
         this._view.y = const_876;
      }
      
      private function assignState() : void
      {
         switch(this.var_13.clubLevel)
         {
            case HabboClubLevelEnum.const_55:
               this._state = const_708;
               break;
            case HabboClubLevelEnum.const_38:
               this._state = !!this.var_13.clubIsExpiring ? int(const_709) : int(const_707);
               break;
            case HabboClubLevelEnum.const_45:
               this._state = !!this.var_13.clubIsExpiring ? int(const_706) : int(const_705);
         }
         var _loc1_:int = this.var_13.clubPeriods;
         var _loc2_:int = this.var_13.clubDays;
         switch(this._state)
         {
            case const_708:
               this.setText(this._localization.getKey("club.bar.no.club"));
               this.detachClubIcon();
               this.animate(false);
               break;
            case const_707:
               if(_loc1_ > 0)
               {
                  this._localization.registerParameter("club.bar.hc.valid","months",_loc1_.toString());
                  this._localization.registerParameter("club.bar.hc.valid","days",_loc2_.toString());
                  this.setText(this._localization.getKey("club.bar.hc.valid"));
               }
               else
               {
                  this._localization.registerParameter("club.bar.hc.valid.days.only","days",_loc2_.toString());
                  this.setText(this._localization.getKey("club.bar.hc.valid.days.only"));
               }
               this.attachClubIcon(const_1112);
               this.animate(false);
               break;
            case const_709:
               this.setText(this._localization.getKey("club.bar.hc.expiring"));
               this.attachClubIcon(const_1112);
               this.animate(true);
               break;
            case const_705:
               if(_loc1_ > 0)
               {
                  this._localization.registerParameter("club.bar.vip.valid","months",_loc1_.toString());
                  this._localization.registerParameter("club.bar.vip.valid","days",_loc2_.toString());
                  this.setText(this._localization.getKey("club.bar.vip.valid"));
               }
               else
               {
                  this._localization.registerParameter("club.bar.vip.valid.days.only","days",_loc2_.toString());
                  this.setText(this._localization.getKey("club.bar.vip.valid.days.only"));
               }
               this.attachClubIcon(const_1111);
               this.animate(false);
               break;
            case const_706:
               this.setText(this._localization.getKey("club.bar.vip.expiring"));
               this.attachClubIcon(const_1111);
               this.animate(true);
         }
      }
      
      private function onClubChanged(param1:HabboInventoryHabboClubEvent) : void
      {
         this.assignState();
      }
      
      private function detachClubIcon() : void
      {
         if(this.var_553)
         {
            if(this.var_553.numListItems == 2)
            {
               this.var_553.removeListItemAt(1);
            }
         }
      }
      
      private function attachClubIcon(param1:int) : void
      {
         if(this.var_553)
         {
            if(this.var_553.numListItems == 1)
            {
               this.var_553.addListItem(this.var_1969);
               this.var_1969.style = param1;
            }
         }
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("club_status_text") as ITextWindow;
            _loc3_ = this._view.findChildByName("club_status_text_shadow") as ITextWindow;
            if(_loc2_)
            {
               _loc2_.text = param1;
            }
            if(_loc3_)
            {
               _loc3_.text = param1;
            }
         }
      }
      
      private function animate(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_1279 = new Timer(15000);
            this.var_1279.addEventListener(TimerEvent.TIMER,this.onTriggerTimer);
            this.var_1279.start();
         }
         else
         {
            if(this.var_1279)
            {
               this.var_1279.stop();
            }
            this.clearAnimation();
         }
      }
      
      private function clearAnimation() : void
      {
         if(this.var_223)
         {
            this.var_223.visible = false;
            if(this.var_1032)
            {
               this.var_1032.stop();
            }
         }
      }
      
      private function onTriggerTimer(param1:TimerEvent) : void
      {
         if(this.var_223)
         {
            this.var_223.visible = true;
            this.setAnimationVariables();
            this.startAnimationTimer();
         }
      }
      
      private function setAnimationVariables() : void
      {
         this.var_223.x = 2;
         this.var_223.invalidate();
         this.var_1570 = 0;
         this.var_2710 = this._view.width - 4 - this.var_223.width;
      }
      
      private function startAnimationTimer() : void
      {
         this.var_1032 = new Timer(25,21);
         this.var_1032.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
         this.var_1032.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationTimerComplete);
         this.var_1032.start();
      }
      
      private function onAnimationTimer(param1:TimerEvent) : void
      {
         this.var_223.x = 2 + this.var_1570 / 20 * this.var_2710;
         this.var_223.invalidate();
         ++this.var_1570;
      }
      
      private function onAnimationTimerComplete(param1:TimerEvent) : void
      {
         this.clearAnimation();
      }
   }
}
