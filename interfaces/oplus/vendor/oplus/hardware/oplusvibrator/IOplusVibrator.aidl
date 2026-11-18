package vendor.oplus.hardware.oplusvibrator;

import vendor.aac.hardware.richtap.vibrator.IRichtapCallback;

@VintfStability
interface IOplusVibrator {
    oneway void init(in IRichtapCallback callback);
    oneway void setDynamicScale(in int scale, in IRichtapCallback callback);
    oneway void setF0(in int f0, in IRichtapCallback callback);
    void stop(in IRichtapCallback callback);
    oneway void setAmplitude(in int amplitude, in IRichtapCallback callback);
    void performHeParam(in int interval, in int amplitude, in int freq, in IRichtapCallback callback);
    oneway void off(in IRichtapCallback callback);
    oneway void on(in int timeoutMs, in IRichtapCallback callback);
    int perform(in int effect_id, in byte strength, in IRichtapCallback callback);
    oneway void performEnvelope(in int[] envInfo, in boolean fastFlag, in IRichtapCallback callback);
    oneway void performRtp(in ParcelFileDescriptor hdl, in IRichtapCallback callback);
    oneway void performHe(in int looper, in int interval, in int amplitude, in int freq, in int[] he, in IRichtapCallback callback);
    oneway void setHapticParam(in int[] dataParam, in int length, in IRichtapCallback callback);
    void linearMotorVibratorOff();
    void linearMotorVibratorOn(in int waveformId, in int intensity, in boolean isRtp);
    void startCalibrate();
    int[] getCalibrateResults();
    int getStatus();
    void setVmax(in int vmax);
    void setMotorOldTest(in int mode);
    byte[] getSupportFeatures();
    void writeGunType(in int type);
    void writeGunMode(in int mode);
    void writeBulletNum(in int num);
    void writeHapticAudio(in String audio);
    void setVibratorTouchStyle(in int style);
    int getVibratorTouchStyle();
    void setPowerOnVibratorSwitch(in String sw);
}
