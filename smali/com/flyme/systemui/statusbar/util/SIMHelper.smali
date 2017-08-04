.class public Lcom/flyme/systemui/statusbar/util/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static isRadioOn(I)Z
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 34
    const-string/jumbo v2, "phone"

    .line 33
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 36
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 37
    :try_start_0
    const-string/jumbo v2, "com.android.systemui"

    invoke-interface {v1, p0, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SIMHelper"

    const-string/jumbo v3, "mTelephony exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
