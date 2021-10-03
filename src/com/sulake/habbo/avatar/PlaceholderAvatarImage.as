package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_741:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1125)
         {
            _structure = null;
            _assets = null;
            var_270 = null;
            var_305 = null;
            _figure = null;
            var_595 = null;
            var_352 = null;
            if(!var_1391 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_846 = null;
            var_1125 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_741[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_741[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_425:
               switch(_loc3_)
               {
                  case AvatarAction.const_878:
                  case AvatarAction.const_518:
                  case AvatarAction.const_421:
                  case AvatarAction.const_957:
                  case AvatarAction.const_415:
                  case AvatarAction.const_735:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_355:
            case AvatarAction.const_146:
            case AvatarAction.const_248:
            case AvatarAction.const_910:
            case AvatarAction.const_739:
            case AvatarAction.const_974:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
