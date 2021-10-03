package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_547:uint = 0;
      
      public static const const_1920:uint = 1;
      
      public static const const_2167:int = 0;
      
      public static const const_2102:int = 1;
      
      public static const const_2214:int = 2;
      
      public static const const_2268:int = 3;
      
      public static const const_1844:int = 4;
      
      public static const const_454:int = 5;
      
      public static var var_421:IEventQueue;
      
      private static var var_610:IEventProcessor;
      
      private static var var_1710:uint = const_547;
      
      private static var stage:Stage;
      
      private static var var_180:IWindowRenderer;
       
      
      private var var_2288:EventProcessorState;
      
      private var var_2286:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_141:DisplayObjectContainer;
      
      protected var var_3064:Boolean = true;
      
      protected var var_1393:Error;
      
      protected var var_2217:int = -1;
      
      protected var var_1392:IInternalWindowServices;
      
      protected var var_1679:IWindowParser;
      
      protected var var_3005:IWindowFactory;
      
      protected var var_95:IDesktopWindow;
      
      protected var var_1680:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_602:Boolean = false;
      
      private var var_2287:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_180 = param2;
         this._localization = param4;
         this.var_141 = param5;
         this.var_1392 = new ServiceManager(this,param5);
         this.var_3005 = param3;
         this.var_1679 = new WindowParser(this);
         this.var_2286 = param7;
         if(!stage)
         {
            if(this.var_141 is Stage)
            {
               stage = this.var_141 as Stage;
            }
            else if(this.var_141.stage)
            {
               stage = this.var_141.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_95 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_95.limits.maxWidth = param6.width;
         this.var_95.limits.maxHeight = param6.height;
         this.var_141.addChild(this.var_95.getDisplayObject());
         this.var_141.doubleClickEnabled = true;
         this.var_141.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2288 = new EventProcessorState(var_180,this.var_95,this.var_95,null,this.var_2286);
         inputMode = const_547;
         this.var_1680 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1710;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_421)
         {
            if(var_421 is IDisposable)
            {
               IDisposable(var_421).dispose();
            }
         }
         if(var_610)
         {
            if(var_610 is IDisposable)
            {
               IDisposable(var_610).dispose();
            }
         }
         switch(value)
         {
            case const_547:
               var_421 = new MouseEventQueue(stage);
               var_610 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1920:
               var_421 = new TabletEventQueue(stage);
               var_610 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_547;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_141.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_141.removeChild(IGraphicContextHost(this.var_95).getGraphicContext(true) as DisplayObject);
            this.var_95.destroy();
            this.var_95 = null;
            this.var_1680.destroy();
            this.var_1680 = null;
            if(this.var_1392 is IDisposable)
            {
               IDisposable(this.var_1392).dispose();
            }
            this.var_1392 = null;
            this.var_1679.dispose();
            this.var_1679 = null;
            var_180 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1393;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2217;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1393 = param2;
         this.var_2217 = param1;
         if(this.var_3064)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1393 = null;
         this.var_2217 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1392;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1679;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_3005;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_95;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_95.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1844,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1680;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_95,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_95)
         {
            this.var_95 = null;
         }
         if(param1.state != WindowState.const_503)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_180.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_602 = true;
         if(this.var_1393)
         {
            throw this.var_1393;
         }
         var_610.process(this.var_2288,var_421);
         this.var_602 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2287 = true;
         var_180.update(param1);
         this.var_2287 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_95 != null && !this.var_95.disposed)
         {
            if(this.var_141 is Stage)
            {
               this.var_95.limits.maxWidth = Stage(this.var_141).stageWidth;
               this.var_95.limits.maxHeight = Stage(this.var_141).stageHeight;
               this.var_95.width = Stage(this.var_141).stageWidth;
               this.var_95.height = Stage(this.var_141).stageHeight;
            }
            else
            {
               this.var_95.limits.maxWidth = this.var_141.width;
               this.var_95.limits.maxHeight = this.var_141.height;
               this.var_95.width = this.var_141.width;
               this.var_95.height = this.var_141.height;
            }
         }
      }
   }
}
