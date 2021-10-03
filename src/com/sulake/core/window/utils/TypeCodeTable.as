package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_904;
         param1["badge"] = const_969;
         param1["bitmap"] = const_453;
         param1["border"] = const_992;
         param1["border_notify"] = const_1726;
         param1["bubble"] = const_918;
         param1["bubble_pointer_up"] = const_1279;
         param1["bubble_pointer_right"] = const_1304;
         param1["bubble_pointer_down"] = const_1346;
         param1["bubble_pointer_left"] = const_1303;
         param1["button"] = const_541;
         param1["button_thick"] = const_905;
         param1["button_icon"] = const_1719;
         param1["button_group_left"] = const_774;
         param1["button_group_center"] = const_796;
         param1["button_group_right"] = const_962;
         param1["canvas"] = const_727;
         param1["checkbox"] = const_898;
         param1["closebutton"] = const_1290;
         param1["container"] = const_407;
         param1["container_button"] = const_986;
         param1["display_object_wrapper"] = const_881;
         param1["dropmenu"] = const_581;
         param1["dropmenu_item"] = const_554;
         param1["frame"] = const_445;
         param1["frame_notify"] = const_1934;
         param1["header"] = const_819;
         param1["html"] = const_1178;
         param1["icon"] = const_1358;
         param1["itemgrid"] = const_1273;
         param1["itemgrid_horizontal"] = const_501;
         param1["itemgrid_vertical"] = const_1018;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_449;
         param1["itemlist_vertical"] = const_397;
         param1["label"] = const_808;
         param1["maximizebox"] = const_1937;
         param1["menu"] = const_1763;
         param1["menu_item"] = const_1931;
         param1["submenu"] = const_1315;
         param1["minimizebox"] = const_1811;
         param1["notify"] = const_1828;
         param1["null"] = const_921;
         param1["password"] = const_973;
         param1["radiobutton"] = const_995;
         param1["region"] = const_335;
         param1["restorebox"] = const_1927;
         param1["scaler"] = const_631;
         param1["scaler_horizontal"] = const_1879;
         param1["scaler_vertical"] = const_1880;
         param1["scrollbar_horizontal"] = const_584;
         param1["scrollbar_vertical"] = const_946;
         param1["scrollbar_slider_button_up"] = const_1192;
         param1["scrollbar_slider_button_down"] = const_1370;
         param1["scrollbar_slider_button_left"] = const_1397;
         param1["scrollbar_slider_button_right"] = const_1156;
         param1["scrollbar_slider_bar_horizontal"] = const_1281;
         param1["scrollbar_slider_bar_vertical"] = const_1321;
         param1["scrollbar_slider_track_horizontal"] = const_1341;
         param1["scrollbar_slider_track_vertical"] = const_1283;
         param1["scrollable_itemlist"] = const_1869;
         param1["scrollable_itemlist_vertical"] = const_494;
         param1["scrollable_itemlist_horizontal"] = const_1228;
         param1["selector"] = const_934;
         param1["selector_list"] = const_837;
         param1["submenu"] = const_1315;
         param1["tab_button"] = const_885;
         param1["tab_container_button"] = const_1238;
         param1["tab_context"] = const_444;
         param1["tab_content"] = const_1268;
         param1["tab_selector"] = const_998;
         param1["text"] = const_803;
         param1["input"] = const_954;
         param1["toolbar"] = const_1738;
         param1["tooltip"] = const_409;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
