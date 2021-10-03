package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class HabboNotificationViewManager implements IUpdateReceiver
   {
      
      private static const const_676:int = 4;
       
      
      private var var_1640:int = 78;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1347:Map;
      
      private var var_1073:Map;
      
      private var _disposed:Boolean = false;
      
      private var var_1094:int;
      
      private var var_178:IHabboConfigurationManager;
      
      private var var_206:Array;
      
      public function HabboNotificationViewManager(param1:IAssetLibrary, param2:IHabboWindowManager, param3:IHabboConfigurationManager, param4:Map, param5:Map)
      {
         this.var_1094 = this.var_1640;
         super();
         this._assetLibrary = param1;
         this._windowManager = param2;
         this.var_1347 = param4;
         this.var_1073 = param5;
         this.var_178 = param3;
         if(this.var_178.getBoolean("club.status.bar.enabled",false))
         {
            this.var_1640 = 96;
            this.var_1094 = this.var_1640;
         }
         this.var_206 = new Array();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_206)
         {
            _loc2_.replaceIcon(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = this.var_206.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            (this.var_206.pop() as HabboNotificationItemView).dispose();
            _loc2_++;
         }
         this._assetLibrary = null;
         this._windowManager = null;
         if(this.var_1347)
         {
            this.var_1347.dispose();
            this.var_1347 = null;
         }
         if(this.var_1073)
         {
            this.var_1073.dispose();
            this.var_1073 = null;
         }
         this._disposed = true;
      }
      
      public function showItem(param1:HabboNotificationItem) : Boolean
      {
         if(!this.isSpaceAvailable())
         {
            return false;
         }
         var _loc2_:HabboNotificationItemView = new HabboNotificationItemView(this._assetLibrary.getAssetByName("layout_notification_xml"),this._windowManager,this.var_1347,this.var_1073,param1);
         _loc2_.reposition(this.getNextAvailableVerticalPosition());
         this.var_206.push(_loc2_);
         this.var_206.sortOn("verticalPosition",Array.NUMERIC);
         return true;
      }
      
      public function isSpaceAvailable() : Boolean
      {
         return this.getNextAvailableVerticalPosition() + HabboNotificationItemView.const_617 < 540;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.var_206.length)
         {
            (this.var_206[_loc2_] as HabboNotificationItemView).update(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_206.length)
         {
            _loc3_ = this.var_206[_loc2_] as HabboNotificationItemView;
            if(_loc3_.ready)
            {
               _loc3_.dispose();
               this.var_206.splice(_loc2_,1);
               _loc2_--;
            }
            _loc2_++;
         }
      }
      
      private function getNextAvailableVerticalPosition() : int
      {
         var _loc3_:* = null;
         if(this.var_206.length == 0)
         {
            return this.var_1094;
         }
         var _loc1_:int = this.var_1094;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_206.length)
         {
            _loc3_ = this.var_206[_loc2_] as HabboNotificationItemView;
            if(_loc1_ + HabboNotificationItemView.const_617 < _loc3_.verticalPosition)
            {
               return _loc1_;
            }
            _loc1_ = _loc3_.verticalPosition + HabboNotificationItemView.const_617 + const_676;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set topMarginIncrease(param1:int) : void
      {
         var _loc4_:* = null;
         this.var_1094 = this.var_1640 + param1;
         var _loc2_:int = this.var_1094;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_206.length)
         {
            _loc4_ = this.var_206[_loc3_] as HabboNotificationItemView;
            _loc4_.reposition(_loc2_);
            _loc2_ = _loc4_.verticalPosition + HabboNotificationItemView.const_617 + const_676;
            _loc3_++;
         }
      }
   }
}
