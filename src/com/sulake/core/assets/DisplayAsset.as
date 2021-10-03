package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1131:String;
      
      protected var var_205:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_921:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_921 = param1;
         this.var_1131 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1131;
      }
      
      public function get content() : Object
      {
         return this.var_205;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_921;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_205.loaderInfo != null)
            {
               if(this.var_205.loaderInfo.loader != null)
               {
                  this.var_205.loaderInfo.loader.unload();
               }
            }
            this.var_205 = null;
            this.var_921 = null;
            this._disposed = true;
            this.var_1131 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_205 = param1 as DisplayObject;
            if(this.var_205 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_205 = DisplayAsset(param1).var_205;
            this.var_921 = DisplayAsset(param1).var_921;
            if(this.var_205 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_205 = DisplayAsset(param1).var_205;
            this.var_921 = DisplayAsset(param1).var_921;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
