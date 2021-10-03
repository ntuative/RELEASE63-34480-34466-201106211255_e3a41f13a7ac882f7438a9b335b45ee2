package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_365:int = 1;
      
      public static const const_207:int = 2;
      
      public static const const_301:int = 3;
      
      public static const const_366:int = 4;
      
      public static const const_212:int = 5;
      
      public static const const_412:int = 1;
      
      public static const const_729:int = 2;
      
      public static const const_770:int = 3;
      
      public static const const_1012:int = 4;
      
      public static const const_244:int = 5;
      
      public static const const_777:int = 6;
      
      public static const const_791:int = 7;
      
      public static const const_308:int = 8;
      
      public static const const_437:int = 9;
      
      public static const const_2116:int = 10;
      
      public static const const_830:int = 11;
      
      public static const const_534:int = 12;
       
      
      private var var_434:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_434 = new Array();
         this.var_434.push(new Tab(this._navigator,const_365,const_534,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_593));
         this.var_434.push(new Tab(this._navigator,const_207,const_412,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_593));
         this.var_434.push(new Tab(this._navigator,const_366,const_830,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1264));
         this.var_434.push(new Tab(this._navigator,const_301,const_244,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_593));
         this.var_434.push(new Tab(this._navigator,const_212,const_308,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_814));
         this.setSelectedTab(const_365);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_366;
      }
      
      public function get tabs() : Array
      {
         return this.var_434;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_434)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
