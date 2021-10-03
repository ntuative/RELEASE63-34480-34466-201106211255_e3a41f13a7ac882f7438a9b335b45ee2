package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1730:int;
      
      private var var_2356:int;
      
      private var var_863:int;
      
      private var var_518:Number;
      
      private var var_2355:Boolean;
      
      private var var_2354:int;
      
      private var var_1729:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_518);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2356 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2354 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2355 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_863;
         if(this.var_863 == 1)
         {
            this.var_518 = param1;
            this.var_1730 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_863);
            this.var_518 = this.var_518 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2355 && param3 - this.var_1730 >= this.var_2356)
         {
            this.var_863 = 0;
            if(this.var_1729 < this.var_2354)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1729;
               this.var_1730 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
