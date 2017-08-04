.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;


# static fields
.field private static synthetic -com_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues:[I


# instance fields
.field private mNoDataShowG:Z

.field private mShowAll:Z


# direct methods
.method private static synthetic -getcom_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->-com_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->-com_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->values()[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->-com_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "showAll"    # Z
    .param p2, "noDataShowG"    # Z

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    .line 278
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    .line 281
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    .line 282
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    .line 280
    return-void
.end method


# virtual methods
.method public getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;Z)I
    .locals 3
    .param p1, "networkType"    # Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .param p2, "dataConnect"    # Z

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "icon":I
    if-eqz p1, :cond_0

    .line 289
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->-getcom_flyme_systemui_statusbar_ext_FlymeNetworkTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 312
    const/4 v0, 0x0

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 291
    :pswitch_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0205cc

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :pswitch_1
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const v0, 0x7f0205ca

    goto :goto_0

    :cond_3
    const v0, 0x7f0205cc

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :pswitch_2
    const v0, 0x7f0205c4

    .line 298
    goto :goto_0

    .line 300
    :pswitch_3
    const v0, 0x7f0205c6

    .line 301
    goto :goto_0

    .line 303
    :pswitch_4
    const v0, 0x7f0205c2

    .line 304
    goto :goto_0

    .line 306
    :pswitch_5
    const v0, 0x7f0205c4

    .line 307
    goto :goto_0

    .line 309
    :pswitch_6
    const v0, 0x7f0205c8

    .line 310
    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
