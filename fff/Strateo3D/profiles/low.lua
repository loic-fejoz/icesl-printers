name_en = "Fast print"
name_es = "Impresión rápida"
name_fr = "Impression rapide"
name_ch = "快速打印"

z_layer_height_mm = 0.4

print_speed_mm_per_sec = 40
first_layer_print_speed_mm_per_sec = 25
perimeter_print_speed_mm_per_sec = 35
cover_print_speed_mm_per_sec = 35
travel_speed_mm_per_sec = 150

for i = 0, max_number_brushes, 1 do
  _G['extruder_'..i] = i
  _G['infill_extruder_'..i] = i
  _G['num_shells_' ..i] = 1
  _G['cover_thickness_mm_'..i] = 1.2
  _G['print_perimeter_'..i] = true
  _G['infill_percentage_'..i] = 20
  _G['flow_multiplier_'..i] = 1.0
  _G['speed_multiplier_'..i] = 1.0
end
