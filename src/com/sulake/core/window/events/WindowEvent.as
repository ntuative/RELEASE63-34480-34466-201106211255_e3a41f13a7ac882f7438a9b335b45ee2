package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1936:String = "WE_DESTROY";
      
      public static const const_323:String = "WE_DESTROYED";
      
      public static const const_1807:String = "WE_OPEN";
      
      public static const const_1906:String = "WE_OPENED";
      
      public static const const_1815:String = "WE_CLOSE";
      
      public static const const_1987:String = "WE_CLOSED";
      
      public static const const_1804:String = "WE_FOCUS";
      
      public static const const_379:String = "WE_FOCUSED";
      
      public static const const_1925:String = "WE_UNFOCUS";
      
      public static const const_1767:String = "WE_UNFOCUSED";
      
      public static const const_1326:String = "WE_ACTIVATE";
      
      public static const const_634:String = "WE_ACTIVATED";
      
      public static const const_1983:String = "WE_DEACTIVATE";
      
      public static const const_538:String = "WE_DEACTIVATED";
      
      public static const const_356:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_603:String = "WE_UNSELECT";
      
      public static const const_513:String = "WE_UNSELECTED";
      
      public static const const_1975:String = "WE_LOCK";
      
      public static const const_1754:String = "WE_LOCKED";
      
      public static const const_1893:String = "WE_UNLOCK";
      
      public static const const_1766:String = "WE_UNLOCKED";
      
      public static const const_744:String = "WE_ENABLE";
      
      public static const const_312:String = "WE_ENABLED";
      
      public static const const_832:String = "WE_DISABLE";
      
      public static const const_282:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_416:String = "WE_RELOCATED";
      
      public static const const_1199:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1892:String = "WE_MINIMIZE";
      
      public static const const_1884:String = "WE_MINIMIZED";
      
      public static const const_2005:String = "WE_MAXIMIZE";
      
      public static const const_1820:String = "WE_MAXIMIZED";
      
      public static const const_1856:String = "WE_RESTORE";
      
      public static const const_1801:String = "WE_RESTORED";
      
      public static const const_651:String = "WE_CHILD_ADDED";
      
      public static const const_458:String = "WE_CHILD_REMOVED";
      
      public static const const_206:String = "WE_CHILD_RELOCATED";
      
      public static const const_144:String = "WE_CHILD_RESIZED";
      
      public static const const_371:String = "WE_CHILD_ACTIVATED";
      
      public static const const_545:String = "WE_PARENT_ADDED";
      
      public static const const_1878:String = "WE_PARENT_REMOVED";
      
      public static const const_1795:String = "WE_PARENT_RELOCATED";
      
      public static const const_658:String = "WE_PARENT_RESIZED";
      
      public static const const_1194:String = "WE_PARENT_ACTIVATED";
      
      public static const const_176:String = "WE_OK";
      
      public static const const_536:String = "WE_CANCEL";
      
      public static const const_109:String = "WE_CHANGE";
      
      public static const const_589:String = "WE_SCROLL";
      
      public static const const_113:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_736:IWindow;
      
      protected var var_1136:Boolean;
      
      protected var var_508:Boolean;
      
      protected var var_161:Boolean;
      
      protected var var_735:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_736 = param3;
         _loc5_.var_508 = param4;
         _loc5_.var_161 = false;
         _loc5_.var_735 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_736;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_508;
      }
      
      public function recycle() : void
      {
         if(this.var_161)
         {
            throw new Error("Event already recycled!");
         }
         this.var_736 = null;
         this._window = null;
         this.var_161 = true;
         this.var_1136 = false;
         this.var_735.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1136;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1136 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1136;
      }
      
      public function stopPropagation() : void
      {
         this.var_1136 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1136 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_508 + " window: " + this._window + " }";
      }
   }
}
