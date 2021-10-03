package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3042:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_616:IWindowContext;
      
      private var var_1273:IMouseDraggingService;
      
      private var var_1272:IMouseScalingService;
      
      private var var_1275:IMouseListenerService;
      
      private var var_1276:IFocusManagerService;
      
      private var var_1271:IToolTipAgentService;
      
      private var var_1274:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3042 = 0;
         this._root = param2;
         this.var_616 = param1;
         this.var_1273 = new WindowMouseDragger(param2);
         this.var_1272 = new WindowMouseScaler(param2);
         this.var_1275 = new WindowMouseListener(param2);
         this.var_1276 = new FocusManager(param2);
         this.var_1271 = new WindowToolTipAgent(param2);
         this.var_1274 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1273 != null)
         {
            this.var_1273.dispose();
            this.var_1273 = null;
         }
         if(this.var_1272 != null)
         {
            this.var_1272.dispose();
            this.var_1272 = null;
         }
         if(this.var_1275 != null)
         {
            this.var_1275.dispose();
            this.var_1275 = null;
         }
         if(this.var_1276 != null)
         {
            this.var_1276.dispose();
            this.var_1276 = null;
         }
         if(this.var_1271 != null)
         {
            this.var_1271.dispose();
            this.var_1271 = null;
         }
         if(this.var_1274 != null)
         {
            this.var_1274.dispose();
            this.var_1274 = null;
         }
         this._root = null;
         this.var_616 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1273;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1272;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1275;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1276;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1271;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1274;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
