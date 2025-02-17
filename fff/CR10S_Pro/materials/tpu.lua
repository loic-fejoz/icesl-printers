name_en = "TPU"
name_es = "TPU"
name_fr = "TPU"

bed_temp_degree_c = 55

if direct_drive then
  filament_priming_mm = 2.0
else
  filament_priming_mm = 0.0
end

-- affecting settings to each extruder
for i = 0, extruder_count-1, 1 do
  _G['extruder_temp_degree_c_'..i] = 235
  _G['filament_priming_mm_'..i] = filament_priming_mm
  _G['priming_mm_per_sec_'..i] = 40
  _G['retract_mm_per_sec_'..i] = 40
end

-- affecting settings to all brushes
for i = 0, max_number_brushes, 1 do
	_G['flow_multiplier_'..i] = 1.05
	_G['speed_multiplier_'..i] = 1.05
end

enable_fan = true
fan_speed_percent = 100
fan_speed_percent_on_bridges = 100
