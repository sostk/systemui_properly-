.class public Lcom/meizu/experiencedatasync/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BUILD_MASK:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field private static final DIGITS:[C

.field public static final PRODUCT_MODEL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "ro.build.mask.id"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_TYPE:Ljava/lang/String;

    .line 428
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    .line 77
    return-void

    .line 428
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 434
    if-nez p0, :cond_0

    .line 435
    const-string/jumbo v4, ""

    return-object v4

    .line 437
    :cond_0
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 438
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 439
    .local v2, "c":I
    const/4 v4, 0x0

    array-length v5, p0

    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v0, p0, v4

    .line 440
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    sget-object v6, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 441
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    sget-object v6, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "b":B
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getFlymeUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    :try_start_0
    const-string/jumbo v3, "account"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 191
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v3, "com.meizu.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 192
    .local v0, "account":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    .line 193
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 195
    .end local v0    # "account":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v2

    .line 197
    :cond_0
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1389
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1390
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "country":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 1393
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 1394
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMD5([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    const/4 v4, 0x0

    .line 381
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 382
    :cond_0
    return-object v4

    .line 385
    :cond_1
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 386
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 387
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v4
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 246
    :try_start_0
    const-string/jumbo v4, "connectivity"

    .line 245
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_5

    .line 248
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 249
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 251
    const-string/jumbo v4, "wifi"

    return-object v4

    .line 253
    :cond_0
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 254
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 255
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 256
    :cond_1
    const-string/jumbo v4, "2g"

    return-object v4

    .line 257
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 258
    const-string/jumbo v4, "4g"

    return-object v4

    .line 260
    :cond_3
    const-string/jumbo v4, "3g"

    return-object v4

    .line 264
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v4, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 267
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 269
    :cond_5
    const-string/jumbo v4, "unknown"

    return-object v4
.end method

.method public static getOSType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public static getOperater(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 209
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 1434
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 1436
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1437
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 1438
    const-string/jumbo v3, ""

    return-object v3

    .line 1440
    :cond_2
    const/4 v1, 0x0

    .line 1442
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1445
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_3

    .line 1446
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v3

    .line 1443
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1448
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private static getProductModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1046
    const-string/jumbo v1, "ro.meizu.product.model"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1050
    :cond_0
    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 1054
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSre(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 1372
    const/4 v2, 0x0

    .line 1373
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v7, "com.meizu.stats"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1374
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "screen_resolution"

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1376
    const-string/jumbo v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1377
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1378
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1379
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1380
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1381
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 1382
    .local v1, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "screen_resolution"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1385
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-object v2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1058
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1059
    :cond_0
    return v1

    .line 1061
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkWorking(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    const-string/jumbo v3, "connectivity"

    .line 229
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 231
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 232
    return v5

    .line 234
    :cond_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 235
    .local v2, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 236
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 238
    :cond_1
    return v6

    .line 236
    :cond_2
    if-eqz v1, :cond_3

    .line 237
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 240
    :cond_3
    return v5
.end method

.method public static isRoot(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 280
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "system/xbin/su"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    return v10

    .line 285
    :cond_0
    const-string/jumbo v5, "device_states"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "deviceStateManager":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 289
    const-string/jumbo v5, "deivce_states"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    if-nez v0, :cond_1

    .line 291
    return v11

    .line 294
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "doCheckState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 297
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_2

    .line 298
    return v11

    .line 300
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 301
    .local v4, "res":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v10, v5, :cond_3

    .line 302
    return v10

    .line 304
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "res":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 306
    :cond_3
    return v11
.end method

.method public static isWiFiWorking(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    const-string/jumbo v2, "connectivity"

    .line 216
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 219
    return v4

    .line 221
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 222
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 223
    return v5

    .line 225
    :cond_1
    return v4
.end method
