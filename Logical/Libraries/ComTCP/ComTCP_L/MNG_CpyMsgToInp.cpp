
#include "MNG_InternalTyp.hpp"

unsigned long int MNG_CpyMsgToInp(MNG_RawDatagram * pFromServer, ComTCP_INPUTS_32BIT_FWRD *pSimInputs) {

    MNG_DatagramType datagramType;
	unsigned long int DWordBuffer;
        unsigned long int byteCount;
	unsigned long int numSignalsInMessage;


	byteCount = N_TO_HUDINT((pFromServer->Header).ByteCount);
	datagramType = static_cast<MNG_DatagramType>(N_TO_HUDINT((pFromServer->Header).DatagramType));
	if (datagramType != MNG_Raw32BitImage) {
		return 0;
	}

    pSimInputs->NumSignals = 32;

    numSignalsInMessage = N_TO_HUDINT(pFromServer->Payload[0]);
        if ((static_cast<long int>(numSignalsInMessage) != pSimInputs->NumSignals) ||
	(byteCount != 4 + numSignalsInMessage * 4)) {
		return 0;
	}

    /* BOOL diEmergencyStop */
    pSimInputs->diEmergencyStop = (pFromServer->Payload[1] != 0);

    /* BOOL diEntranceSensor */
    pSimInputs->diEntranceSensor = (pFromServer->Payload[2] != 0);

    /* FLOAT32 aiEntranceSoilLevel */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[3]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiEntranceSoilLevel), (unsigned long int)&(DWordBuffer), 4);

    /* BOOL diHighPressSensor1 */
    pSimInputs->diHighPressSensor1 = (pFromServer->Payload[4] != 0);

    /* BOOL diHighPressSensor2 */
    pSimInputs->diHighPressSensor2 = (pFromServer->Payload[5] != 0);

    /* BOOL diHighPressSensor3 */
    pSimInputs->diHighPressSensor3 = (pFromServer->Payload[6] != 0);

    /* BOOL diHighPressSensor4 */
    pSimInputs->diHighPressSensor4 = (pFromServer->Payload[7] != 0);

    /* BOOL diHBrushSensor1 */
    pSimInputs->diHBrushSensor1 = (pFromServer->Payload[8] != 0);

    /* BOOL diHBrushSensor2 */
    pSimInputs->diHBrushSensor2 = (pFromServer->Payload[9] != 0);

    /* BOOL diHBrushSensor3 */
    pSimInputs->diHBrushSensor3 = (pFromServer->Payload[10] != 0);

    /* BOOL diHBrushSensor4 */
    pSimInputs->diHBrushSensor4 = (pFromServer->Payload[11] != 0);

    /* FLOAT32 aiVBrushLForceF */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[12]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVBrushLForceF), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVBrushLForceS */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[13]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVBrushLForceS), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVBrushRForceF */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[14]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVBrushRForceF), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVBrushRForceS */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[15]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVBrushRForceS), (unsigned long int)&(DWordBuffer), 4);

    /* BOOL diHPolishSensor1 */
    pSimInputs->diHPolishSensor1 = (pFromServer->Payload[16] != 0);

    /* BOOL diHPolishSensor2 */
    pSimInputs->diHPolishSensor2 = (pFromServer->Payload[17] != 0);

    /* BOOL diHPolishSensor3 */
    pSimInputs->diHPolishSensor3 = (pFromServer->Payload[18] != 0);

    /* BOOL diHPolishSensor4 */
    pSimInputs->diHPolishSensor4 = (pFromServer->Payload[19] != 0);

    /* FLOAT32 aiVPolishLForceF */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[20]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVPolishLForceF), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVPolishLForceS */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[21]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVPolishLForceS), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVPolishRForceF */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[22]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVPolishRForceF), (unsigned long int)&(DWordBuffer), 4);

    /* FLOAT32 aiVPolishRForceS */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[23]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiVPolishRForceS), (unsigned long int)&(DWordBuffer), 4);

    /* BOOL diHDry1Sensor1 */
    pSimInputs->diHDry1Sensor1 = (pFromServer->Payload[24] != 0);

    /* BOOL diHDry1Sensor2 */
    pSimInputs->diHDry1Sensor2 = (pFromServer->Payload[25] != 0);

    /* BOOL diHDry1Sensor3 */
    pSimInputs->diHDry1Sensor3 = (pFromServer->Payload[26] != 0);

    /* BOOL diHDry1Sensor4 */
    pSimInputs->diHDry1Sensor4 = (pFromServer->Payload[27] != 0);

    /* BOOL diHDry2Sensor1 */
    pSimInputs->diHDry2Sensor1 = (pFromServer->Payload[28] != 0);

    /* BOOL diHDry2Sensor2 */
    pSimInputs->diHDry2Sensor2 = (pFromServer->Payload[29] != 0);

    /* BOOL diHDry2Sensor3 */
    pSimInputs->diHDry2Sensor3 = (pFromServer->Payload[30] != 0);

    /* BOOL diHDry2Sensor4 */
    pSimInputs->diHDry2Sensor4 = (pFromServer->Payload[31] != 0);

    /* FLOAT32 aiWaterLevel */
    DWordBuffer = N_TO_HUDINT(pFromServer->Payload[32]);
    brsmemcpy((unsigned long int)&(pSimInputs->aiWaterLevel), (unsigned long int)&(DWordBuffer), 4);


return N_TO_HUDINT((pFromServer->Header).Counter); // return counter
}
