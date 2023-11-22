
#ifndef  _MNGGLOBAL_HPP_
#define _MNGGLOBAL_HPP_

#include <mng_globalTYP.h>


    typedef struct {

		signed short NumSignals;

        /* BOOL diEmergencyStop */
        BOOL diEmergencyStop;
        /* BOOL diEntranceSensor */
        BOOL diEntranceSensor;
        /* REAL aiEntranceSoilLevel */
        REAL aiEntranceSoilLevel;
        /* BOOL diHighPressSensor1 */
        BOOL diHighPressSensor1;
        /* BOOL diHighPressSensor2 */
        BOOL diHighPressSensor2;
        /* BOOL diHighPressSensor3 */
        BOOL diHighPressSensor3;
        /* BOOL diHighPressSensor4 */
        BOOL diHighPressSensor4;
        /* BOOL diHBrushSensor1 */
        BOOL diHBrushSensor1;
        /* BOOL diHBrushSensor2 */
        BOOL diHBrushSensor2;
        /* BOOL diHBrushSensor3 */
        BOOL diHBrushSensor3;
        /* BOOL diHBrushSensor4 */
        BOOL diHBrushSensor4;
        /* REAL aiVBrushLForceF */
        REAL aiVBrushLForceF;
        /* REAL aiVBrushLForceS */
        REAL aiVBrushLForceS;
        /* REAL aiVBrushRForceF */
        REAL aiVBrushRForceF;
        /* REAL aiVBrushRForceS */
        REAL aiVBrushRForceS;
        /* BOOL diHPolishSensor1 */
        BOOL diHPolishSensor1;
        /* BOOL diHPolishSensor2 */
        BOOL diHPolishSensor2;
        /* BOOL diHPolishSensor3 */
        BOOL diHPolishSensor3;
        /* BOOL diHPolishSensor4 */
        BOOL diHPolishSensor4;
        /* REAL aiVPolishLForceF */
        REAL aiVPolishLForceF;
        /* REAL aiVPolishLForceS */
        REAL aiVPolishLForceS;
        /* REAL aiVPolishRForceF */
        REAL aiVPolishRForceF;
        /* REAL aiVPolishRForceS */
        REAL aiVPolishRForceS;
        /* BOOL diHDry1Sensor1 */
        BOOL diHDry1Sensor1;
        /* BOOL diHDry1Sensor2 */
        BOOL diHDry1Sensor2;
        /* BOOL diHDry1Sensor3 */
        BOOL diHDry1Sensor3;
        /* BOOL diHDry1Sensor4 */
        BOOL diHDry1Sensor4;
        /* BOOL diHDry2Sensor1 */
        BOOL diHDry2Sensor1;
        /* BOOL diHDry2Sensor2 */
        BOOL diHDry2Sensor2;
        /* BOOL diHDry2Sensor3 */
        BOOL diHDry2Sensor3;
        /* BOOL diHDry2Sensor4 */
        BOOL diHDry2Sensor4;
        /* REAL aiWaterLevel */
        REAL aiWaterLevel;

        } ComTCP_INPUTS_32BIT_FWRD;


    typedef struct {

		signed short NumSignals;

        /* BOOL doMaintenanceMode */
        BOOL doMaintenanceMode;
        /* REAL aoChemChemValve */
        REAL aoChemChemValve;
        /* BOOL doChemWaterValve */
        BOOL doChemWaterValve;
        /* BOOL doChemRefill */
        BOOL doChemRefill;
        /* BOOL doHighPressLiftRelay */
        BOOL doHighPressLiftRelay;
        /* BOOL doHighPressLowerRelay */
        BOOL doHighPressLowerRelay;
        /* BOOL doHighPressValve */
        BOOL doHighPressValve;
        /* BOOL doHighPressPumpRelay */
        BOOL doHighPressPumpRelay;
        /* BOOL doHBrushLiftRelay */
        BOOL doHBrushLiftRelay;
        /* BOOL doHBrushLowerRelay */
        BOOL doHBrushLowerRelay;
        /* BOOL doHBrushValve */
        BOOL doHBrushValve;
        /* BOOL doHBrushBrushRelay */
        BOOL doHBrushBrushRelay;
        /* BOOL doVBrushRelayLClose */
        BOOL doVBrushRelayLClose;
        /* BOOL doVBrushRelayLOpen */
        BOOL doVBrushRelayLOpen;
        /* BOOL doVBrushRelayRClose */
        BOOL doVBrushRelayRClose;
        /* BOOL doVBrushRelayROpen */
        BOOL doVBrushRelayROpen;
        /* REAL aoVBrushLVel */
        REAL aoVBrushLVel;
        /* REAL aoVBrushRVel */
        REAL aoVBrushRVel;
        /* BOOL doVBrushValve */
        BOOL doVBrushValve;
        /* BOOL doVBrushRelayBrush */
        BOOL doVBrushRelayBrush;
        /* BOOL doUnderbodyValve */
        BOOL doUnderbodyValve;
        /* BOOL doUnderbodyPumpRelay */
        BOOL doUnderbodyPumpRelay;
        /* BOOL doHPolishLiftRelay */
        BOOL doHPolishLiftRelay;
        /* BOOL doHPolishLowerRelay */
        BOOL doHPolishLowerRelay;
        /* BOOL doHPolishBrushRelay */
        BOOL doHPolishBrushRelay;
        /* BOOL doVPolishRelayLClose */
        BOOL doVPolishRelayLClose;
        /* BOOL doVPolishRelayLOpen */
        BOOL doVPolishRelayLOpen;
        /* BOOL doVPolishRelayRClose */
        BOOL doVPolishRelayRClose;
        /* BOOL doVPolishRelayROpen */
        BOOL doVPolishRelayROpen;
        /* REAL aoVPolishLVel */
        REAL aoVPolishLVel;
        /* REAL aoVPolishRVel */
        REAL aoVPolishRVel;
        /* BOOL doVPolishRelayBrush */
        BOOL doVPolishRelayBrush;
        /* BOOL doWaxValve */
        BOOL doWaxValve;
        /* BOOL doWaxPumpRelay */
        BOOL doWaxPumpRelay;
        /* BOOL doWaxRefill */
        BOOL doWaxRefill;
        /* BOOL doHDry1LiftRelay */
        BOOL doHDry1LiftRelay;
        /* BOOL doHDry1LowerRelay */
        BOOL doHDry1LowerRelay;
        /* BOOL doHDry1VentRelay */
        BOOL doHDry1VentRelay;
        /* BOOL doHDry1HeaterRelay */
        BOOL doHDry1HeaterRelay;
        /* BOOL doVDry1VentRelay */
        BOOL doVDry1VentRelay;
        /* BOOL doVDry1HeaterRelay */
        BOOL doVDry1HeaterRelay;
        /* BOOL doHDry2LiftRelay */
        BOOL doHDry2LiftRelay;
        /* BOOL doHDry2LowerRelay */
        BOOL doHDry2LowerRelay;
        /* BOOL doHDry2VentRelay */
        BOOL doHDry2VentRelay;
        /* BOOL doHDry2HeaterRelay */
        BOOL doHDry2HeaterRelay;
        /* BOOL doConvRelay */
        BOOL doConvRelay;
        /* BOOL doWaterValve */
        BOOL doWaterValve;
        /* BOOL doTankWaterValve */
        BOOL doTankWaterValve;
        /* BOOL doExitGreenLight */
        BOOL doExitGreenLight;
        /* BOOL doExitOrangeLight */
        BOOL doExitOrangeLight;
        /* BOOL doExitRedLight */
        BOOL doExitRedLight;
        /* BOOL doExitLiftDoorRelay */
        BOOL doExitLiftDoorRelay;
        /* BOOL doExitLowerDoorRelay */
        BOOL doExitLowerDoorRelay;

        } ComTCP_OUTPUTS_32BIT_FWRD;



#endif
