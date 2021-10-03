package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_151:Stage;
      
      private static var var_326:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_821:Boolean = true;
      
      private static var var_137:DisplayObject;
      
      private static var var_1571:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_151 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_137)
            {
               var_151.removeChild(var_137);
               var_151.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_151.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_151.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_151.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_821 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_326;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_326 = param1;
         if(var_326)
         {
            if(var_137)
            {
               var_137.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_137)
         {
            var_137.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_821)
         {
            _loc1_ = var_1571[_type];
            if(_loc1_)
            {
               if(var_137)
               {
                  var_151.removeChild(var_137);
               }
               else
               {
                  var_151.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_151.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_151.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_151.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_137 = _loc1_;
               var_151.addChild(var_137);
            }
            else
            {
               if(var_137)
               {
                  var_151.removeChild(var_137);
                  var_151.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_151.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_151.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_151.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_137 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_375:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_923:
                  case MouseCursorType.const_297:
                  case MouseCursorType.const_1905:
                  case MouseCursorType.const_2013:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_821 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1571[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_137)
         {
            var_137.x = param1.stageX - 2;
            var_137.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_326 = false;
               Mouse.show();
            }
            else
            {
               var_326 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_137 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_326 = false;
         }
      }
   }
}
