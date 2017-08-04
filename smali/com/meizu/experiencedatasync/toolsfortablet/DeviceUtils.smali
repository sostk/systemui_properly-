.class public Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static sDeviceId:Ljava/lang/String;

.field private static sIMEI:Ljava/lang/String;

.field private static sIsAliRom:Ljava/lang/Boolean;

.field private static sIsBox:Ljava/lang/Boolean;

.field private static sIsChinaMobile:Ljava/lang/Boolean;

.field private static sIsFlymeRom:Ljava/lang/Boolean;

.field private static sIsProductInternational:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;

.field private static sIsYunosProject:Ljava/lang/Boolean;

.field private static sMacAddr:Ljava/lang/String;

.field private static sSN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string/jumbo v0, "DeviceUtils"

    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sSN:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsChinaMobile:Ljava/lang/Boolean;

    .line 44
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsAliRom:Ljava/lang/Boolean;

    .line 45
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsProductInternational:Ljava/lang/Boolean;

    .line 46
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsFlymeRom:Ljava/lang/Boolean;

    .line 47
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    .line 48
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsBox:Ljava/lang/Boolean;

    .line 49
    sput-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsYunosProject:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v3, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-static {p0}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->isBox(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    :cond_0
    sget-object v3, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "nonce":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getSN()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "sn":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    invoke-static {p0}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 105
    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    .line 115
    .end local v0    # "mac":Ljava/lang/String;
    .end local v1    # "nonce":Ljava/lang/StringBuilder;
    .end local v2    # "sn":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v3, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    return-object v3

    .line 112
    :cond_3
    invoke-static {p0}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    :try_start_0
    const-string/jumbo v2, "android.telephony.MzTelephonyManager"

    .line 127
    .local v2, "MZ_T_M":Ljava/lang/String;
    const-string/jumbo v1, "getDeviceId"

    .line 129
    .local v1, "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    const-string/jumbo v6, "android.telephony.MzTelephonyManager"

    const-string/jumbo v7, "getDeviceId"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "IMEITmp":Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 131
    check-cast v0, Ljava/lang/String;

    .end local v0    # "IMEITmp":Ljava/lang/Object;
    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    .end local v2    # "MZ_T_M":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    :try_start_1
    const-string/jumbo v2, "com.meizu.telephony.MzTelephonymanager"

    .line 141
    .restart local v2    # "MZ_T_M":Ljava/lang/String;
    const-string/jumbo v1, "getDeviceId"

    .line 143
    .restart local v1    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    const-string/jumbo v6, "com.meizu.telephony.MzTelephonymanager"

    const-string/jumbo v7, "getDeviceId"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .restart local v0    # "IMEITmp":Ljava/lang/Object;
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 145
    check-cast v0, Ljava/lang/String;

    .end local v0    # "IMEITmp":Ljava/lang/Object;
    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v1    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    .end local v2    # "MZ_T_M":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 154
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    .line 157
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIMEI:Ljava/lang/String;

    return-object v6

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .local v4, "ignore":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 179
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    return-object v6

    .line 181
    :cond_0
    const-string/jumbo v6, "com.meizu.toolsfortablet"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 182
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 183
    .local v0, "address":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_4

    .line 184
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 185
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 186
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 187
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 188
    const-string/jumbo v6, "wlan0"

    invoke-static {v6}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    const-string/jumbo v6, "mac_address"

    sget-object v7, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 189
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    .line 190
    const-string/jumbo v6, "eth0"

    invoke-static {v6}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .local v0, "address":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "wlan0"

    invoke-static {v6}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    const-string/jumbo v6, "eth0"

    invoke-static {v6}, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .local v0, "address":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 200
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 202
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v4, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    .line 209
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "mac_address"

    sget-object v8, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    sget-object v6, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sMacAddr:Ljava/lang/String;

    return-object v6
.end method

.method private static getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "address":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/sys/class/net/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/address"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 218
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v4, "reader":Ljava/util/Scanner;
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/util/Scanner;
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - Cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v5, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - Cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    sget-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sSN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    sget-object v1, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sSN:Ljava/lang/String;

    return-object v1

    .line 167
    :cond_0
    const-string/jumbo v1, "ro.serialno"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/toolsfortablet/reflect/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "sn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    sput-object v0, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sSN:Ljava/lang/String;

    .line 171
    :cond_1
    return-object v0
.end method

.method public static isBox(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 72
    :try_start_0
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsBox:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsBox:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 75
    :cond_0
    const-string/jumbo v2, "ro.target.product"

    invoke-static {v2}, Lcom/meizu/experiencedatasync/toolsfortablet/reflect/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "product":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "box"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsBox:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 77
    .end local v1    # "product":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v3
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 56
    :try_start_0
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 59
    :cond_0
    const-string/jumbo v2, "ro.target.product"

    invoke-static {v2}, Lcom/meizu/experiencedatasync/toolsfortablet/reflect/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "product":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->sIsTablet:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 61
    .end local v1    # "product":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/meizu/experiencedatasync/toolsfortablet/DeviceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v3
.end method
