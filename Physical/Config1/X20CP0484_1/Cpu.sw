<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="MainCtrl" Source="Source.MainCtrl.MainCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="EntryCtrl" Source="Source.Entrance.EntryCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ChemCtrl" Source="Source.Chemicals.ChemCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="HPWater" Source="Source.HPWater.HPWater.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="HBrushCtrl" Source="Source.HBrush.HBrushCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="VBrushCtrl" Source="Source.VBrush.VBrushCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="UBCtrl" Source="Source.OptUnderBody.UBCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="VPolishCtr" Source="Source.OptVpolish.VPolishCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="WaxCtrl" Source="Source.OptWax.WaxCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DryHCtrl" Source="Source.Drying.DryHCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="CarExit" Source="Source.CarExit.CarExit.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AlarmCtrl" Source="Source.Infrastructure.AlarmCtrl.AlarmCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DataCtrl" Source="Source.Infrastructure.DataCtrl.DataCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="RecipeCtrl" Source="Source.Infrastructure.RecipeCtrl.RecipeCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="VisuCtrl" Source="Source.VisuCtrl.VisuCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ComTCP_P" Source="Libraries.ComTCP.ComTCP_P.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="Auxillary" Source="Source.Auxillary.Auxillary.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="HPolish" Source="Source.HPolishp.HPolish.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4" />
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <Libraries>
    <LibraryObject Name="ComTCP_L" Source="Libraries.ComTCP.ComTCP_L.lby" Memory="None" Language="ANSIC" Debugging="true" />
    <LibraryObject Name="AsTCP" Source="Libraries.AsTCP.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="operator" Source="Libraries.operator.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="ArEventLog" Source="Libraries.ArEventLog.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsBrStr" Source="Libraries.AsBrStr.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="MpAlarmX" Source="Libraries.MpAlarmX.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpBase" Source="Libraries.MpBase.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpData" Source="Libraries.MpData.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="DataObj" Source="Libraries.DataObj.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="binary" Debugging="true" />
  </Libraries>
</SwConfiguration>