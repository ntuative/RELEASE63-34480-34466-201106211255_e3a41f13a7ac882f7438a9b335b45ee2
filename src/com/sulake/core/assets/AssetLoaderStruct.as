package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_1097:IAssetLoader;
      
      private var var_2603:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2603 = param1;
         this.var_1097 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2603;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_1097;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_1097 != null)
            {
               if(!this.var_1097.disposed)
               {
                  this.var_1097.dispose();
                  this.var_1097 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
