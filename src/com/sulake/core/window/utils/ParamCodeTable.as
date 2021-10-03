package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_182;
         param1["bound_to_parent_rect"] = const_103;
         param1["child_window"] = const_1379;
         param1["embedded_controller"] = const_1255;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_1017;
         param1["mouse_dragging_target"] = const_275;
         param1["mouse_dragging_trigger"] = const_399;
         param1["mouse_scaling_target"] = const_358;
         param1["mouse_scaling_trigger"] = const_528;
         param1["horizontal_mouse_scaling_trigger"] = const_305;
         param1["vertical_mouse_scaling_trigger"] = const_287;
         param1["observe_parent_input_events"] = const_1387;
         param1["optimize_region_to_layout_size"] = const_579;
         param1["parent_window"] = const_1314;
         param1["relative_horizontal_scale_center"] = const_199;
         param1["relative_horizontal_scale_fixed"] = const_150;
         param1["relative_horizontal_scale_move"] = const_414;
         param1["relative_horizontal_scale_strech"] = const_418;
         param1["relative_scale_center"] = const_1236;
         param1["relative_scale_fixed"] = const_865;
         param1["relative_scale_move"] = const_1390;
         param1["relative_scale_strech"] = const_1260;
         param1["relative_vertical_scale_center"] = const_219;
         param1["relative_vertical_scale_fixed"] = const_168;
         param1["relative_vertical_scale_move"] = const_280;
         param1["relative_vertical_scale_strech"] = const_333;
         param1["on_resize_align_left"] = const_890;
         param1["on_resize_align_right"] = const_588;
         param1["on_resize_align_center"] = const_506;
         param1["on_resize_align_top"] = const_913;
         param1["on_resize_align_bottom"] = const_612;
         param1["on_resize_align_middle"] = const_540;
         param1["on_accommodate_align_left"] = const_1237;
         param1["on_accommodate_align_right"] = const_594;
         param1["on_accommodate_align_center"] = const_759;
         param1["on_accommodate_align_top"] = const_1167;
         param1["on_accommodate_align_bottom"] = const_522;
         param1["on_accommodate_align_middle"] = const_958;
         param1["route_input_events_to_parent"] = const_596;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1398;
         param1["scalable_with_mouse"] = const_1288;
         param1["reflect_horizontal_resize_to_parent"] = const_650;
         param1["reflect_vertical_resize_to_parent"] = const_557;
         param1["reflect_resize_to_parent"] = const_321;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1241;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
