# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_COUNTVAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_DAC_COUNTVAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_LED_COUNTVAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAXVAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MINVAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_COUNTVAL { PARAM_VALUE.C_COUNTVAL } {
	# Procedure called to update C_COUNTVAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_COUNTVAL { PARAM_VALUE.C_COUNTVAL } {
	# Procedure called to validate C_COUNTVAL
	return true
}

proc update_PARAM_VALUE.C_DAC_COUNTVAL { PARAM_VALUE.C_DAC_COUNTVAL } {
	# Procedure called to update C_DAC_COUNTVAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DAC_COUNTVAL { PARAM_VALUE.C_DAC_COUNTVAL } {
	# Procedure called to validate C_DAC_COUNTVAL
	return true
}

proc update_PARAM_VALUE.C_LED_COUNTVAL { PARAM_VALUE.C_LED_COUNTVAL } {
	# Procedure called to update C_LED_COUNTVAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_LED_COUNTVAL { PARAM_VALUE.C_LED_COUNTVAL } {
	# Procedure called to validate C_LED_COUNTVAL
	return true
}

proc update_PARAM_VALUE.C_MAXVAL { PARAM_VALUE.C_MAXVAL } {
	# Procedure called to update C_MAXVAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAXVAL { PARAM_VALUE.C_MAXVAL } {
	# Procedure called to validate C_MAXVAL
	return true
}

proc update_PARAM_VALUE.C_MINVAL { PARAM_VALUE.C_MINVAL } {
	# Procedure called to update C_MINVAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MINVAL { PARAM_VALUE.C_MINVAL } {
	# Procedure called to validate C_MINVAL
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_DATA_WIDTH { PARAM_VALUE.C_M_AXIS_DATA_WIDTH } {
	# Procedure called to update C_M_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_DATA_WIDTH { PARAM_VALUE.C_M_AXIS_DATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_DATA_WIDTH { PARAM_VALUE.C_S_AXIS_DATA_WIDTH } {
	# Procedure called to update C_S_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_DATA_WIDTH { PARAM_VALUE.C_S_AXIS_DATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_DATA_WIDTH PARAM_VALUE.C_M_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_DATA_WIDTH PARAM_VALUE.C_S_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAXVAL { MODELPARAM_VALUE.C_MAXVAL PARAM_VALUE.C_MAXVAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAXVAL}] ${MODELPARAM_VALUE.C_MAXVAL}
}

proc update_MODELPARAM_VALUE.C_MINVAL { MODELPARAM_VALUE.C_MINVAL PARAM_VALUE.C_MINVAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MINVAL}] ${MODELPARAM_VALUE.C_MINVAL}
}

proc update_MODELPARAM_VALUE.C_LED_COUNTVAL { MODELPARAM_VALUE.C_LED_COUNTVAL PARAM_VALUE.C_LED_COUNTVAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_LED_COUNTVAL}] ${MODELPARAM_VALUE.C_LED_COUNTVAL}
}

proc update_MODELPARAM_VALUE.C_COUNTVAL { MODELPARAM_VALUE.C_COUNTVAL PARAM_VALUE.C_COUNTVAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_COUNTVAL}] ${MODELPARAM_VALUE.C_COUNTVAL}
}

proc update_MODELPARAM_VALUE.C_DAC_COUNTVAL { MODELPARAM_VALUE.C_DAC_COUNTVAL PARAM_VALUE.C_DAC_COUNTVAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DAC_COUNTVAL}] ${MODELPARAM_VALUE.C_DAC_COUNTVAL}
}

