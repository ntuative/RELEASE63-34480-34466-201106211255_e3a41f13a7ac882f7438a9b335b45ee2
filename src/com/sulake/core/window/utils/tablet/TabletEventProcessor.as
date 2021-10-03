package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3086:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_95 = param1.desktop;
         var_70 = param1.var_1388 as WindowController;
         var_188 = param1.var_1387 as WindowController;
         var_180 = param1.renderer;
         var_916 = param1.var_1389;
         param2.begin();
         param2.end();
         param1.desktop = var_95;
         param1.var_1388 = var_70;
         param1.var_1387 = var_188;
         param1.renderer = var_180;
         param1.var_1389 = var_916;
      }
   }
}
