package com.sulake.core.window.services
{
   import com.sulake.core.window.components.IFocusWindow;
   import com.sulake.core.window.utils.ChildEntityArrayReader;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FocusEvent;
   
   public class FocusManager extends ChildEntityArrayReader implements IFocusManagerService
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_151:Stage;
      
      public function FocusManager(param1:DisplayObject)
      {
         this.var_151 = param1.stage;
         this.var_151.addEventListener(Event.ACTIVATE,this.onActivateEvent);
         this.var_151.addEventListener(FocusEvent.FOCUS_OUT,this.onFocusEvent);
         this.var_151.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.onFocusEvent);
         this.var_151.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.onFocusEvent);
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_151.removeEventListener(Event.ACTIVATE,this.onActivateEvent);
            this.var_151.removeEventListener(FocusEvent.FOCUS_OUT,this.onFocusEvent);
            this.var_151.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.onFocusEvent);
            this.var_151.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.onFocusEvent);
            this.var_151 = null;
            this._disposed = true;
            var_35 = null;
         }
      }
      
      public function registerFocusWindow(param1:IFocusWindow) : void
      {
         if(param1 != null)
         {
            if(var_35.indexOf(param1) == -1)
            {
               var_35.push(param1);
               if(this.var_151.focus == null)
               {
                  param1.focus();
               }
            }
         }
      }
      
      public function removeFocusWindow(param1:IFocusWindow) : void
      {
         var _loc2_:int = 0;
         if(param1 != null)
         {
            _loc2_ = var_35.indexOf(param1);
            if(_loc2_ > -1)
            {
               var_35.splice(_loc2_,1);
            }
         }
         if(this.var_151.focus == null)
         {
            this.resolveNextFocusTarget();
         }
      }
      
      private function resolveNextFocusTarget() : IFocusWindow
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_-- != 0)
         {
            _loc2_ = var_35[_loc1_] as IFocusWindow;
            if(!_loc2_.disposed)
            {
               _loc2_.focus();
            }
            var_35.splice(_loc1_,1);
         }
         return _loc2_;
      }
      
      private function onActivateEvent(param1:Event) : void
      {
         if(this.var_151.focus == null)
         {
            this.resolveNextFocusTarget();
         }
      }
      
      private function onFocusEvent(param1:FocusEvent) : void
      {
         if(this.var_151.focus == null)
         {
            this.resolveNextFocusTarget();
         }
      }
   }
}
