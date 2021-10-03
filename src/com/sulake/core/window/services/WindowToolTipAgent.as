package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1405:String;
      
      protected var var_308:IToolTipWindow;
      
      protected var var_426:Timer;
      
      protected var var_1406:Point;
      
      protected var var_905:Point;
      
      protected var var_1690:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_905 = new Point();
         this.var_1406 = new Point(20,20);
         this.var_1690 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1405 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1690 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1405 = param1.caption;
               this.var_1690 = 500;
            }
            _mouse.x = _root.mouseX;
            _mouse.y = _root.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_905);
            if(this.var_1405 != null && this.var_1405 != "")
            {
               if(this.var_426 == null)
               {
                  this.var_426 = new Timer(this.var_1690,1);
                  this.var_426.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_426.reset();
               this.var_426.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_426 != null)
         {
            this.var_426.stop();
            this.var_426.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_426 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_905);
            if(this.var_308 != null && !this.var_308.disposed)
            {
               this.var_308.x = param1 + this.var_1406.x;
               this.var_308.y = param2 + this.var_1406.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_426 != null)
         {
            this.var_426.reset();
         }
         if(_window && true)
         {
            if(this.var_308 == null || this.var_308.disposed)
            {
               this.var_308 = _window.context.create("undefined::ToolTip",this.var_1405,WindowType.const_409,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_308.x = _loc2_.x + this.var_905.x + this.var_1406.x;
            this.var_308.y = _loc2_.y + this.var_905.y + this.var_1406.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_308 != null && !this.var_308.disposed)
         {
            this.var_308.destroy();
            this.var_308 = null;
         }
      }
   }
}
