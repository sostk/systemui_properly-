.class public Lcom/meizu/flyme/activeview/utils/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final hexDigits:[C

.field private static sImei:Ljava/lang/String;

.field private static sIsFlymeRom:Ljava/lang/Boolean;

.field private static sIsInternational:Ljava/lang/Boolean;

.field private static sIsMacDevice:Ljava/lang/Boolean;

.field private static sIsShopDemo:Ljava/lang/Boolean;

.field private static sMacAddr:Ljava/lang/String;

.field private static sModel:Ljava/lang/String;

.field private static sPhoneSn:Ljava/lang/String;

.field private static sSystemIndependent:Ljava/lang/Boolean;

.field private static sUnitType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;

    const/16 v0, 0x10

    .line 231
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->hexDigits:[C

    .line 257
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;

    .line 409
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    .line 430
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;

    .line 574
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sIsMacDevice:Ljava/lang/Boolean;

    .line 596
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sUnitType:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FormatFileSizeEx(D)Ljava/lang/String;
    .locals 14
    .param p0, "fFileSize"    # D

    .prologue
    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    const-wide/high16 v10, 0x41d0000000000000L    # 1.073741824E9

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 377
    .local v1, "nSize":I
    cmpg-double v2, p0, v8

    if-gez v2, :cond_1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 379
    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    .line 380
    double-to-int v1, p0

    :cond_0
    const-string/jumbo v2, "%dB"

    .line 382
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "csRet":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 383
    .end local v0    # "csRet":Ljava/lang/String;
    :cond_1
    cmpl-double v2, p0, v8

    if-ltz v2, :cond_2

    const-wide/high16 v2, 0x40c4000000000000L    # 10240.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    const-string/jumbo v2, "%dKB"

    .line 384
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v8

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "csRet":Ljava/lang/String;
    :cond_2
    const-wide/high16 v2, 0x40c4000000000000L    # 10240.0

    .line 385
    cmpl-double v2, p0, v2

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x40f9000000000000L    # 102400.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_3

    const-string/jumbo v2, "%dKB"

    .line 386
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v8

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "csRet":Ljava/lang/String;
    :cond_3
    const-wide/high16 v2, 0x40f9000000000000L    # 102400.0

    .line 387
    cmpl-double v2, p0, v2

    if-ltz v2, :cond_4

    cmpg-double v2, p0, v12

    if-gez v2, :cond_4

    .line 388
    div-double v2, p0, v8

    double-to-int v1, v2

    const-string/jumbo v2, "%dKB"

    .line 389
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto :goto_0

    .line 390
    .end local v0    # "csRet":Ljava/lang/String;
    :cond_4
    cmpl-double v2, p0, v12

    if-ltz v2, :cond_5

    const-wide/high16 v2, 0x4199000000000000L    # 1.048576E8

    cmpg-double v2, p0, v2

    if-gez v2, :cond_5

    const-string/jumbo v2, "%.2fMB"

    .line 392
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "csRet":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x4199000000000000L    # 1.048576E8

    .line 393
    cmpl-double v2, p0, v2

    if-ltz v2, :cond_6

    cmpg-double v2, p0, v10

    if-gez v2, :cond_6

    const-string/jumbo v2, "%.1fMB"

    .line 395
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto/16 :goto_0

    .line 396
    .end local v0    # "csRet":Ljava/lang/String;
    :cond_6
    cmpl-double v2, p0, v10

    if-ltz v2, :cond_7

    const-wide/high16 v2, 0x4204000000000000L    # 1.073741824E10

    cmpg-double v2, p0, v2

    if-gez v2, :cond_7

    const-string/jumbo v2, "%.2fGB"

    .line 398
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "csRet":Ljava/lang/String;
    :cond_7
    const-wide/high16 v2, 0x4204000000000000L    # 1.073741824E10

    .line 399
    cmpl-double v2, p0, v2

    if-ltz v2, :cond_8

    const-wide/high16 v2, 0x4239000000000000L    # 1.073741824E11

    cmpg-double v2, p0, v2

    if-gez v2, :cond_8

    const-string/jumbo v2, "%.1fGB"

    .line 401
    new-array v3, v4, [Ljava/lang/Object;

    div-double v4, p0, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto/16 :goto_0

    .line 403
    .end local v0    # "csRet":Ljava/lang/String;
    :cond_8
    div-double v2, p0, v10

    double-to-int v1, v2

    const-string/jumbo v2, "%dGB"

    .line 404
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "csRet":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 331
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 332
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 334
    .local v3, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 336
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    return-object v0

    .line 334
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 235
    array-length v3, p0

    .line 236
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .line 238
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 242
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 239
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->hexDigits:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    .line 240
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->hexDigits:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final getAndroidVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getAppIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 307
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 308
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 309
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 316
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v5

    .line 311
    .restart local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/Utility;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 315
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getAppIconRes(Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 321
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 322
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 323
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    return v4
.end method

.method public static getAppMetaDataBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 485
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 487
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 490
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/flyme/activeview/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 634
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 635
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    .line 637
    return v4
.end method

.method public static getAppVersionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 54
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, ""

    .line 56
    return-object v3
.end method

.method public static final getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 228
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBatteryCapacity(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 465
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "batteryFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 466
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 468
    .local v1, "batteryStatus":Landroid/content/Intent;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 473
    return v4

    :cond_0
    const-string/jumbo v4, "level"

    .line 469
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "level":I
    const-string/jumbo v4, "scale"

    .line 470
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 471
    .local v3, "scale":I
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    return v4
.end method

.method public static getDefaultImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;

    return-object v4

    :cond_1
    :try_start_0
    const-string/jumbo v1, "android.telephony.MzTelephonyManager"

    .local v1, "MZ_T_M":Ljava/lang/String;
    const-string/jumbo v0, "getDeviceId"

    .local v0, "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    const-string/jumbo v4, "android.telephony.MzTelephonyManager"

    const-string/jumbo v5, "getDeviceId"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 156
    invoke-static {v4, v5, v6, v7}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    .end local v1    # "MZ_T_M":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    :goto_2
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "phone"

    .line 173
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 174
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;

    goto :goto_0

    .line 159
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ignore":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "ignore":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string/jumbo v1, "com.meizu.telephony.MzTelephonymanager"

    .restart local v1    # "MZ_T_M":Ljava/lang/String;
    const-string/jumbo v0, "getDeviceId"

    .restart local v0    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    const-string/jumbo v4, "com.meizu.telephony.MzTelephonymanager"

    const-string/jumbo v5, "getDeviceId"

    const/4 v6, 0x2

    .line 166
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sImei:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 168
    .end local v0    # "METHOD_GET_DEVICE_ID":Ljava/lang/String;
    .end local v1    # "MZ_T_M":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->isMacDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    :goto_1
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sModel:Ljava/lang/String;

    return-object v0

    .line 102
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/Utility;->isFlymeRom()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.os.BuildExt"

    const-string/jumbo v1, "MZ_MODEL"

    .line 104
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sModel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sModel:Ljava/lang/String;

    goto :goto_1
.end method

.method public static final getDeviceModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->isSystemIndependent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/meizu/flyme/activeview/utils/Utility;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "All"

    .line 87
    return-object v0
.end method

.method public static final getFileLength(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    .line 223
    return-wide v2

    .line 218
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 222
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final getFilePackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 204
    return-object v3

    .line 197
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 199
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 203
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getFilePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-static {p0, p1}, Lcom/meizu/flyme/activeview/utils/Utility;->getFilePackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 209
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 212
    return-object v1

    .line 210
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method public static final getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getDefaultImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 527
    sget-object v6, Lcom/meizu/flyme/activeview/utils/Utility;->sMacAddr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    .line 531
    .local v0, "address":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2

    const-string/jumbo v6, "wifi"

    .line 547
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 548
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_6

    .line 553
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sMacAddr:Ljava/lang/String;

    .line 554
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sMacAddr:Ljava/lang/String;

    return-object v5

    .line 528
    :cond_1
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sMacAddr:Ljava/lang/String;

    return-object v5

    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "connectivity"

    .line 532
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 533
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v5, "wlan0"

    .line 534
    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/Utility;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "eth0"

    .line 536
    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/Utility;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    .local v0, "address":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 539
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 540
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 542
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    const-string/jumbo v5, "eth0"

    .line 543
    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/Utility;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .local v0, "address":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "wlan0"

    .line 541
    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/Utility;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 549
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .local v0, "address":Ljava/lang/String;
    .restart local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 550
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .local v0, "address":Ljava/lang/String;
    :cond_7
    move-object v0, v5

    goto :goto_1
.end method

.method private static getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 560
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

    .line 561
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 562
    .local v4, "reader":Ljava/util/Scanner;
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-nez v5, :cond_0

    .line 565
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 571
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/util/Scanner;
    :goto_1
    return-object v0

    .line 563
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "reader":Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 570
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/util/Scanner;
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 570
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 569
    .local v2, "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final getSN(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 141
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sPhoneSn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sPhoneSn:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.serialno"

    .line 142
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/Utility;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sPhoneSn:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSimOpCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v2, "phone"

    .line 450
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 451
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .local v0, "simState":I
    const/4 v2, 0x5

    .line 452
    if-eq v0, v2, :cond_0

    const-string/jumbo v2, ""

    .line 455
    return-object v2

    .line 453
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSubmitAppVersionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/flyme/activeview/utils/Utility;->getSubmitAppVersionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitAppVersionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/meizu/flyme/activeview/utils/Utility;->getAppVersionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "versionName":Ljava/lang/String;
    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string/jumbo v1, "android.os.SystemProperties"

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    .line 286
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    return-object p1
.end method

.method public static final getSystemVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .local v1, "version":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ro.build.mask.id"

    const-string/jumbo v3, ""

    .line 66
    invoke-static {v2, v3}, Lcom/meizu/flyme/activeview/utils/Utility;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .end local v1    # "version":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :goto_1
    return-object v1

    .line 69
    .restart local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .local v1, "version":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getUnitType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 604
    :try_start_0
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sUnitType:Ljava/lang/Integer;

    if-nez v4, :cond_1

    const-string/jumbo v4, "ro.target.product"

    const/4 v5, 0x0

    .line 607
    invoke-static {v4, v5}, Lcom/meizu/flyme/activeview/utils/Utility;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "product":Ljava/lang/String;
    const/4 v2, 0x0

    .line 609
    .local v2, "unitType":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 616
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 617
    .local v3, "valueOf":Ljava/lang/Integer;
    sput-object v3, Lcom/meizu/flyme/activeview/utils/Utility;->sUnitType:Ljava/lang/Integer;

    .line 618
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 605
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "unitType":I
    .end local v3    # "valueOf":Ljava/lang/Integer;
    :cond_1
    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sUnitType:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .restart local v1    # "product":Ljava/lang/String;
    .restart local v2    # "unitType":I
    :cond_2
    const-string/jumbo v4, "tablet"

    .line 610
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "box"

    .line 612
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 613
    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    .line 611
    goto :goto_0

    .line 618
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "unitType":I
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    return v6
.end method

.method public static isFlymeRom()Z
    .locals 3

    .prologue
    .line 123
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;

    :try_start_0
    const-string/jumbo v0, "android.os.BuildExt"

    const-string/jumbo v1, "isFlymeRom"

    const/4 v2, 0x0

    .line 128
    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsFlymeRom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isInternational()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 265
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 268
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;

    :try_start_0
    const-string/jumbo v5, "android.os.BuildExt"

    .line 270
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "isProductInternational"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 271
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    sput-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    :goto_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 266
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsInternational:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 280
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMacDevice(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 582
    :try_start_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsMacDevice:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    const-string/jumbo v5, "ro.target.product"

    const/4 v6, 0x0

    .line 585
    invoke-static {v5, v6}, Lcom/meizu/flyme/activeview/utils/Utility;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "product":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    move v3, v4

    .line 587
    .local v3, "z":Z
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 588
    .local v2, "valueOf":Ljava/lang/Boolean;
    sput-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sIsMacDevice:Ljava/lang/Boolean;

    .line 589
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 583
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "valueOf":Ljava/lang/Boolean;
    .end local v3    # "z":Z
    :cond_0
    sget-object v5, Lcom/meizu/flyme/activeview/utils/Utility;->sIsMacDevice:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .restart local v1    # "product":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "tablet"

    .line 586
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "box"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 589
    .end local v1    # "product":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    return v4
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 350
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 354
    :cond_0
    return v4

    .line 347
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    return v4

    .line 350
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x1

    return v2
.end method

.method public static final isPackageValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 191
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 183
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 185
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_2

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isShopDemo()Z
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;

    :try_start_0
    const-string/jumbo v0, "android.os.BuildExt"

    const-string/jumbo v1, "IS_SHOPDEMO"

    .line 443
    invoke-static {v0, v1}, Lcom/meizu/flyme/activeview/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 439
    :cond_0
    sget-object v0, Lcom/meizu/flyme/activeview/utils/Utility;->sIsShopDemo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 296
    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 297
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 302
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 298
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    goto :goto_1

    .line 301
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isSystemIndependent(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 412
    sget-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    sget-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 414
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 415
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    .line 423
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    sget-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 424
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    goto :goto_0

    .line 416
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "system_independent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    const-string/jumbo v2, "MzUpdateComponent"

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sSystemIndependent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/flyme/activeview/utils/Utility;->sSystemIndependent:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 421
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isUpdateVersionValid(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    if-ltz p1, :cond_0

    .line 506
    invoke-static {p0}, Lcom/meizu/flyme/activeview/utils/Utility;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 507
    .local v0, "appVersion":I
    if-lt v0, p1, :cond_1

    :goto_0
    return v1

    .line 504
    .end local v0    # "appVersion":I
    :cond_0
    return v2

    .restart local v0    # "appVersion":I
    :cond_1
    move v1, v2

    .line 507
    goto :goto_0
.end method

.method public static isWifiActive(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 360
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 370
    :cond_0
    return v4

    .line 361
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 362
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 366
    return v4

    .line 364
    :cond_2
    return v5
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string/jumbo v3, "MD5"

    .line 247
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "md5":Ljava/security/MessageDigest;
    const-string/jumbo v3, "utf-8"

    .line 248
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 249
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/flyme/activeview/utils/Utility;->encodeHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    .local v2, "str":Ljava/lang/String;
    return-object v2

    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    .line 254
    return-object v3
.end method
