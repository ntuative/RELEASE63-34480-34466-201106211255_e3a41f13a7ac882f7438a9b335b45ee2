package com.sulake.habbo.toolbar.extensions.purse.indicators
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.purse.PurseEvent;
   import com.sulake.habbo.toolbar.extensions.purse.ICurrencyIndicator;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   
   public class CreditsIndicator implements ICurrencyIndicator
   {
       
      
      private const const_2326:uint = 4.291993382E9;
      
      private const const_2327:uint = 4.29080704E9;
      
      private var _view:IWindowContainer;
      
      private var var_2661:int;
      
      private var _catalog:IHabboCatalog;
      
      private var _disposed:Boolean = false;
      
      public function CreditsIndicator(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboCatalog)
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._catalog = param3;
         var _loc4_:XmlAsset = param2.getAssetByName("purse_indicator_credits_xml") as XmlAsset;
         if(_loc4_)
         {
            this._view = param1.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCreditsClick);
            this._view.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onContainerMouseOver);
            this._view.addEventListener(WindowMouseEvent.const_25,this.onContainerMouseOut);
            _loc5_ = [];
            if(this._view.groupChildrenWithTag("ICON",_loc5_,true) == 1)
            {
               _loc6_ = _loc5_[0] as IBitmapWrapperWindow;
               _loc7_ = param2.getAssetByName("coin_icon_png").content as BitmapData;
               if(_loc6_)
               {
                  _loc6_.bitmap = _loc7_.clone();
                  _loc6_.width = _loc7_.width;
                  _loc6_.height = _loc7_.height;
               }
            }
         }
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this._disposed = true;
      }
      
      public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(PurseEvent.const_108,this.onCreditBalance);
      }
      
      public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(PurseEvent.const_108,this.onCreditBalance);
      }
      
      private function onCreditBalance(param1:PurseEvent) : void
      {
         this.var_2661 = param1.balance;
         var _loc2_:String = this.var_2661.toString();
         if(_loc2_.length < 2)
         {
            _loc2_ = "  " + _loc2_;
         }
         if(this._view)
         {
            this._view.findChildByName("credits").caption = _loc2_;
            this._view.findChildByName("credits_shadow").caption = _loc2_;
         }
      }
      
      private function onCreditsClick(param1:WindowMouseEvent) : void
      {
         this._catalog.openCreditsHabblet();
      }
      
      private function onContainerMouseOver(param1:WindowMouseEvent) : void
      {
         this._view.color = this.const_2327;
      }
      
      private function onContainerMouseOut(param1:WindowMouseEvent) : void
      {
         this._view.color = this.const_2326;
      }
   }
}
