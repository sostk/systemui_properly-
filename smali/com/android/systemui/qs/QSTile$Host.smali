.class public interface abstract Lcom/android/systemui/qs/QSTile$Host;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$Host$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapsePanels()V
.end method

.method public abstract getAcceleratorController()Lcom/flyme/systemui/statusbar/policy/AcceleratorController;
.end method

.method public abstract getAutoBrightnessController()Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;
.end method

.method public abstract getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
.end method

.method public abstract getCastController()Lcom/android/systemui/statusbar/policy/CastController;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataSaveController()Lcom/flyme/systemui/statusbar/policy/DataSaveController;
.end method

.method public abstract getDriveModeController()Lcom/flyme/systemui/statusbar/policy/DriveModeController;
.end method

.method public abstract getEyeProtectiveController()Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;
.end method

.method public abstract getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
.end method

.method public abstract getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
.end method

.method public abstract getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.end method

.method public abstract getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
.end method

.method public abstract getNfcController()Lcom/flyme/systemui/statusbar/policy/NfcController;
.end method

.method public abstract getPowerSaveController()Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
.end method

.method public abstract getRingerModeController()Lcom/flyme/systemui/statusbar/policy/RingerModeController;
.end method

.method public abstract getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
.end method

.method public abstract getScreenRecordController()Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;
.end method

.method public abstract getScreenshotController()Lcom/flyme/systemui/statusbar/policy/ScreenshotController;
.end method

.method public abstract getSmartTouchController()Lcom/flyme/systemui/statusbar/policy/SmartTouchController;
.end method

.method public abstract getVpnController()Lcom/flyme/systemui/statusbar/policy/VpnController;
.end method

.method public abstract getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
.end method

.method public abstract startSettingsActivity(Landroid/content/Intent;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
