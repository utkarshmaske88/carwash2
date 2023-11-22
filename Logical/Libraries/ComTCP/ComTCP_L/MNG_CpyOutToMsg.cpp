
#include "MNG_InternalTyp.hpp"

unsigned long int MNG_CpyOutToMsg(MNG_RawDatagram * pToServer, unsigned long int counter, ComTCP_OUTPUTS_32BIT_FWRD *pSimOutputs ) {

    
        unsigned long int DWordBuffer;
	
        pSimOutputs->NumSignals = 53;
        (pToServer->Header).ByteCount    = H_TO_NUDINT(216);
        (pToServer->Header).DatagramType = H_TO_NUDINT(MNG_Raw32BitImage);
        (pToServer->Header).SentTime = H_TO_NUDINT(0);  // Todo
        (pToServer->Header).Counter = H_TO_NUDINT(counter);
        pToServer->Payload[0] = H_TO_NUDINT(pSimOutputs->NumSignals);

    
    /* doMaintenanceMode : BOOL */
    if(pSimOutputs->doMaintenanceMode == 1) {
        pToServer->Payload[1] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[1] = 0;
    }


    /* aoChemChemValve : FLOAT32 */
    brsmemcpy((unsigned long int)&(DWordBuffer), (unsigned long int)&(pSimOutputs->aoChemChemValve), 4);
    pToServer->Payload[2] = H_TO_NUDINT(DWordBuffer);


    /* doChemWaterValve : BOOL */
    if(pSimOutputs->doChemWaterValve == 1) {
        pToServer->Payload[3] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[3] = 0;
    }


    /* doChemRefill : BOOL */
    if(pSimOutputs->doChemRefill == 1) {
        pToServer->Payload[4] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[4] = 0;
    }


    /* doHighPressLiftRelay : BOOL */
    if(pSimOutputs->doHighPressLiftRelay == 1) {
        pToServer->Payload[5] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[5] = 0;
    }


    /* doHighPressLowerRelay : BOOL */
    if(pSimOutputs->doHighPressLowerRelay == 1) {
        pToServer->Payload[6] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[6] = 0;
    }


    /* doHighPressValve : BOOL */
    if(pSimOutputs->doHighPressValve == 1) {
        pToServer->Payload[7] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[7] = 0;
    }


    /* doHighPressPumpRelay : BOOL */
    if(pSimOutputs->doHighPressPumpRelay == 1) {
        pToServer->Payload[8] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[8] = 0;
    }


    /* doHBrushLiftRelay : BOOL */
    if(pSimOutputs->doHBrushLiftRelay == 1) {
        pToServer->Payload[9] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[9] = 0;
    }


    /* doHBrushLowerRelay : BOOL */
    if(pSimOutputs->doHBrushLowerRelay == 1) {
        pToServer->Payload[10] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[10] = 0;
    }


    /* doHBrushValve : BOOL */
    if(pSimOutputs->doHBrushValve == 1) {
        pToServer->Payload[11] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[11] = 0;
    }


    /* doHBrushBrushRelay : BOOL */
    if(pSimOutputs->doHBrushBrushRelay == 1) {
        pToServer->Payload[12] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[12] = 0;
    }


    /* doVBrushRelayLClose : BOOL */
    if(pSimOutputs->doVBrushRelayLClose == 1) {
        pToServer->Payload[13] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[13] = 0;
    }


    /* doVBrushRelayLOpen : BOOL */
    if(pSimOutputs->doVBrushRelayLOpen == 1) {
        pToServer->Payload[14] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[14] = 0;
    }


    /* doVBrushRelayRClose : BOOL */
    if(pSimOutputs->doVBrushRelayRClose == 1) {
        pToServer->Payload[15] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[15] = 0;
    }


    /* doVBrushRelayROpen : BOOL */
    if(pSimOutputs->doVBrushRelayROpen == 1) {
        pToServer->Payload[16] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[16] = 0;
    }


    /* aoVBrushLVel : FLOAT32 */
    brsmemcpy((unsigned long int)&(DWordBuffer), (unsigned long int)&(pSimOutputs->aoVBrushLVel), 4);
    pToServer->Payload[17] = H_TO_NUDINT(DWordBuffer);


    /* aoVBrushRVel : FLOAT32 */
    brsmemcpy((unsigned long int)&(DWordBuffer), (unsigned long int)&(pSimOutputs->aoVBrushRVel), 4);
    pToServer->Payload[18] = H_TO_NUDINT(DWordBuffer);


    /* doVBrushValve : BOOL */
    if(pSimOutputs->doVBrushValve == 1) {
        pToServer->Payload[19] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[19] = 0;
    }


    /* doVBrushRelayBrush : BOOL */
    if(pSimOutputs->doVBrushRelayBrush == 1) {
        pToServer->Payload[20] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[20] = 0;
    }


    /* doUnderbodyValve : BOOL */
    if(pSimOutputs->doUnderbodyValve == 1) {
        pToServer->Payload[21] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[21] = 0;
    }


    /* doUnderbodyPumpRelay : BOOL */
    if(pSimOutputs->doUnderbodyPumpRelay == 1) {
        pToServer->Payload[22] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[22] = 0;
    }


    /* doHPolishLiftRelay : BOOL */
    if(pSimOutputs->doHPolishLiftRelay == 1) {
        pToServer->Payload[23] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[23] = 0;
    }


    /* doHPolishLowerRelay : BOOL */
    if(pSimOutputs->doHPolishLowerRelay == 1) {
        pToServer->Payload[24] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[24] = 0;
    }


    /* doHPolishBrushRelay : BOOL */
    if(pSimOutputs->doHPolishBrushRelay == 1) {
        pToServer->Payload[25] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[25] = 0;
    }


    /* doVPolishRelayLClose : BOOL */
    if(pSimOutputs->doVPolishRelayLClose == 1) {
        pToServer->Payload[26] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[26] = 0;
    }


    /* doVPolishRelayLOpen : BOOL */
    if(pSimOutputs->doVPolishRelayLOpen == 1) {
        pToServer->Payload[27] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[27] = 0;
    }


    /* doVPolishRelayRClose : BOOL */
    if(pSimOutputs->doVPolishRelayRClose == 1) {
        pToServer->Payload[28] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[28] = 0;
    }


    /* doVPolishRelayROpen : BOOL */
    if(pSimOutputs->doVPolishRelayROpen == 1) {
        pToServer->Payload[29] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[29] = 0;
    }


    /* aoVPolishLVel : FLOAT32 */
    brsmemcpy((unsigned long int)&(DWordBuffer), (unsigned long int)&(pSimOutputs->aoVPolishLVel), 4);
    pToServer->Payload[30] = H_TO_NUDINT(DWordBuffer);


    /* aoVPolishRVel : FLOAT32 */
    brsmemcpy((unsigned long int)&(DWordBuffer), (unsigned long int)&(pSimOutputs->aoVPolishRVel), 4);
    pToServer->Payload[31] = H_TO_NUDINT(DWordBuffer);


    /* doVPolishRelayBrush : BOOL */
    if(pSimOutputs->doVPolishRelayBrush == 1) {
        pToServer->Payload[32] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[32] = 0;
    }


    /* doWaxValve : BOOL */
    if(pSimOutputs->doWaxValve == 1) {
        pToServer->Payload[33] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[33] = 0;
    }


    /* doWaxPumpRelay : BOOL */
    if(pSimOutputs->doWaxPumpRelay == 1) {
        pToServer->Payload[34] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[34] = 0;
    }


    /* doWaxRefill : BOOL */
    if(pSimOutputs->doWaxRefill == 1) {
        pToServer->Payload[35] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[35] = 0;
    }


    /* doHDry1LiftRelay : BOOL */
    if(pSimOutputs->doHDry1LiftRelay == 1) {
        pToServer->Payload[36] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[36] = 0;
    }


    /* doHDry1LowerRelay : BOOL */
    if(pSimOutputs->doHDry1LowerRelay == 1) {
        pToServer->Payload[37] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[37] = 0;
    }


    /* doHDry1VentRelay : BOOL */
    if(pSimOutputs->doHDry1VentRelay == 1) {
        pToServer->Payload[38] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[38] = 0;
    }


    /* doHDry1HeaterRelay : BOOL */
    if(pSimOutputs->doHDry1HeaterRelay == 1) {
        pToServer->Payload[39] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[39] = 0;
    }


    /* doVDry1VentRelay : BOOL */
    if(pSimOutputs->doVDry1VentRelay == 1) {
        pToServer->Payload[40] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[40] = 0;
    }


    /* doVDry1HeaterRelay : BOOL */
    if(pSimOutputs->doVDry1HeaterRelay == 1) {
        pToServer->Payload[41] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[41] = 0;
    }


    /* doHDry2LiftRelay : BOOL */
    if(pSimOutputs->doHDry2LiftRelay == 1) {
        pToServer->Payload[42] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[42] = 0;
    }


    /* doHDry2LowerRelay : BOOL */
    if(pSimOutputs->doHDry2LowerRelay == 1) {
        pToServer->Payload[43] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[43] = 0;
    }


    /* doHDry2VentRelay : BOOL */
    if(pSimOutputs->doHDry2VentRelay == 1) {
        pToServer->Payload[44] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[44] = 0;
    }


    /* doHDry2HeaterRelay : BOOL */
    if(pSimOutputs->doHDry2HeaterRelay == 1) {
        pToServer->Payload[45] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[45] = 0;
    }


    /* doConvRelay : BOOL */
    if(pSimOutputs->doConvRelay == 1) {
        pToServer->Payload[46] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[46] = 0;
    }


    /* doWaterValve : BOOL */
    if(pSimOutputs->doWaterValve == 1) {
        pToServer->Payload[47] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[47] = 0;
    }


    /* doTankWaterValve : BOOL */
    if(pSimOutputs->doTankWaterValve == 1) {
        pToServer->Payload[48] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[48] = 0;
    }


    /* doExitGreenLight : BOOL */
    if(pSimOutputs->doExitGreenLight == 1) {
        pToServer->Payload[49] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[49] = 0;
    }


    /* doExitOrangeLight : BOOL */
    if(pSimOutputs->doExitOrangeLight == 1) {
        pToServer->Payload[50] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[50] = 0;
    }


    /* doExitRedLight : BOOL */
    if(pSimOutputs->doExitRedLight == 1) {
        pToServer->Payload[51] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[51] = 0;
    }


    /* doExitLiftDoorRelay : BOOL */
    if(pSimOutputs->doExitLiftDoorRelay == 1) {
        pToServer->Payload[52] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[52] = 0;
    }


    /* doExitLowerDoorRelay : BOOL */
    if(pSimOutputs->doExitLowerDoorRelay == 1) {
        pToServer->Payload[53] = 0xFFFFFFFF;   /*BOOL */
    } else { 
        pToServer->Payload[53] = 0;
    }


	return 0;
}
