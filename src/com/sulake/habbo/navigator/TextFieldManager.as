package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_88:ITextFieldWindow;
      
      private var var_725:Boolean;
      
      private var var_1518:String = "";
      
      private var var_2165:int;
      
      private var var_2166:Function;
      
      private var var_2981:String = "";
      
      private var var_160:IWindowContainer;
      
      private var var_2982:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2983:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_88 = param2;
         this.var_2165 = param3;
         this.var_2166 = param4;
         if(param5 != null)
         {
            this.var_725 = true;
            this.var_1518 = param5;
            this.var_88.text = param5;
         }
         Util.setProcDirectly(this.var_88,this.onInputClick);
         this.var_88.addEventListener(WindowKeyboardEvent.const_185,this.checkEnterPress);
         this.var_88.addEventListener(WindowEvent.const_109,this.checkMaxLen);
         this.var_2982 = this.var_88.textBackground;
         this._orgTextBackgroundColor = this.var_88.textBackgroundColor;
         this.var_2983 = this.var_88.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_88.textBackground = this.var_2982;
         this.var_88.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_88.textColor = this.var_2983;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_88.textBackground = true;
         this.var_88.textBackgroundColor = 4294021019;
         this.var_88.textColor = 4278190080;
         if(this.var_160 == null)
         {
            this.var_160 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_160,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_88.parent).addChild(this.var_160);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_160.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_160.findChildByName("border").width = _loc2_.width + 15;
         this.var_160.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_88.getLocalPosition(_loc3_);
         this.var_160.x = _loc3_.x;
         this.var_160.y = _loc3_.y - this.var_160.height + 3;
         var _loc4_:IWindow = this.var_160.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_160.width / 2 - _loc4_.width / 2;
         this.var_160.x += (this.var_88.width - this.var_160.width) / 2;
         this.var_160.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1518 != null)
         {
            this.var_88.text = this.var_1518;
            this.var_725 = true;
         }
         else
         {
            this.var_88.text = "";
            this.var_725 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_725)
         {
            return this.var_2981;
         }
         return this.var_88.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_725 = false;
         this.var_88.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_160 != null)
         {
            this.var_160.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_88;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_725 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_379)
         {
            return;
         }
         if(!this.var_725)
         {
            return;
         }
         this.var_88.text = this.var_2981;
         this.var_725 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_2166 != null)
            {
               this.var_2166();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_88.text;
         if(_loc2_.length > this.var_2165)
         {
            this.var_88.text = _loc2_.substring(0,this.var_2165);
         }
      }
   }
}
