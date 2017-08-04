.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoShowEmergencyOnly:Ljava/lang/Boolean;

.field private mShowAllNoSim:Ljava/lang/Boolean;

.field private mShowSuffix:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showSuffix"    # Z
    .param p3, "noShowEmergencyOnly"    # Z
    .param p4, "showAllNoSim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mNoShowEmergencyOnly:Ljava/lang/Boolean;

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    .line 106
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    .line 107
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mNoShowEmergencyOnly:Ljava/lang/Boolean;

    .line 108
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    .line 109
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method private append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string/jumbo v1, "3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    :cond_0
    const-string/jumbo v1, " 3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string/jumbo v1, "4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_0
    const-string/jumbo v1, " 4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSurfix(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "netWorkType"    # Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .prologue
    .line 213
    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->append4GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    invoke-static {p3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow3G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->append3GSurfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    return-object p1
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    return v0

    .line 136
    :pswitch_0
    return v1

    .line 139
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 144
    :cond_1
    return v1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNetWorkName(Landroid/telephony/ServiceState;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "defName"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_2

    .line 114
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "numberic":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "locCountry":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "locLanguage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 121
    return-object v3

    .line 123
    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "numberic":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defName":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 129
    .restart local p2    # "defName":Ljava/lang/String;
    :cond_2
    return-object p2
.end method

.method public mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "mobileSignalController"    # [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "noSIMString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    invoke-static {}, Lcom/flyme/systemui/statusbar/util/SIMHelper;->getSlotCount()I

    move-result v4

    .line 172
    .local v4, "simCount":I
    if-le v4, v8, :cond_8

    .line 173
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowAllNoSim:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    new-array v3, v4, [Ljava/lang/String;

    .line 175
    .local v3, "netWorkNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 176
    aput-object p3, v3, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    array-length v6, p1

    if-lez v6, :cond_2

    .line 179
    const/4 v0, 0x0

    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 180
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getSimSlotIndex()I

    move-result v1

    .line 181
    .local v1, "index":I
    array-length v6, v3

    if-ge v1, v6, :cond_1

    if-ltz v1, :cond_1

    .line 182
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "index":I
    :cond_2
    invoke-static {v3, p2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 188
    .end local v0    # "i":I
    .end local v3    # "netWorkNames":[Ljava/lang/String;
    :cond_3
    array-length v6, p1

    if-le v6, v8, :cond_8

    .line 189
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_6

    .line 190
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_3
    array-length v6, p1

    if-ge v2, v6, :cond_5

    .line 191
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getSimSlotIndex()I

    move-result v6

    aget-object v7, p1, v2

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getSimSlotIndex()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 192
    aget-object v5, p1, v2

    .line 193
    .local v5, "t":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    aget-object v6, p1, v0

    aput-object v6, p1, v2

    .line 194
    aput-object v5, p1, v0

    .line 190
    .end local v5    # "t":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    .end local v2    # "j":I
    :cond_6
    array-length v6, p1

    new-array v3, v6, [Ljava/lang/String;

    .line 199
    .restart local v3    # "netWorkNames":[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_4
    array-length v6, p1

    if-ge v0, v6, :cond_7

    .line 200
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 202
    :cond_7
    invoke-static {v3, p2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 206
    .end local v0    # "i":I
    .end local v3    # "netWorkNames":[Ljava/lang/String;
    :cond_8
    array-length v6, p1

    if-lez v6, :cond_9

    .line 207
    aget-object v6, p1, v7

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getLabel()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 209
    :cond_9
    return-object p3
.end method

.method public updateNetWorkName(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "separator"    # Ljava/lang/String;
    .param p6, "defName"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p4, :cond_0

    move-object v1, p4

    .line 151
    .local v1, "netWorkName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mNoShowEmergencyOnly:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "calls_only":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    return-object p6

    .line 150
    .end local v0    # "calls_only":Ljava/lang/String;
    .end local v1    # "netWorkName":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .restart local v1    # "netWorkName":Ljava/lang/String;
    goto :goto_0

    .line 158
    :cond_1
    return-object v1

    .line 160
    :cond_2
    return-object p6
.end method

.method public updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;
    .locals 1
    .param p1, "netWorkName"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "netWorkType"    # Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .prologue
    .line 165
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->mShowSuffix:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;->appendSurfix(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "netWorkName":Ljava/lang/String;
    :cond_1
    return-object p1
.end method
