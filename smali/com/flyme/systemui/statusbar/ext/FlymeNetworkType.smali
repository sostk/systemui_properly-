.class public final enum Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
.super Ljava/lang/Enum;
.source "FlymeNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field private static synthetic -com_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues:[I

.field public static final enum Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;


# instance fields
.field private mTypeId:I


# direct methods
.method private static synthetic -getcom_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->-com_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->-com_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->values()[Lcom/flyme/systemui/statusbar/ext/NetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->-com_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 8
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_G"

    invoke-direct {v0, v1, v5, v5}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_3G"

    invoke-direct {v0, v1, v6, v6}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_1X"

    invoke-direct {v0, v1, v7, v7}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_1X3G"

    invoke-direct {v0, v1, v8, v8}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_4G"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_E"

    invoke-direct {v0, v1, v4, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const-string/jumbo v1, "Type_4G_PLUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeId"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->mTypeId:I

    .line 11
    return-void
.end method

.method public static getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .locals 3
    .param p0, "networkType"    # Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .prologue
    const/4 v2, 0x0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->-getcom_flyme_systemui_statusbar_ext_NetworkTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    return-object v2

    .line 19
    :pswitch_0
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 23
    :pswitch_2
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 25
    :pswitch_3
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 29
    :pswitch_5
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 31
    :pswitch_6
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0

    .line 36
    :cond_0
    return-object v2

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static isShow3G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .locals 2
    .param p0, "netWorkType"    # Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .prologue
    const/4 v0, 0x1

    .line 40
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShow4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .locals 1
    .param p0, "netWorkType"    # Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .prologue
    .line 49
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0
.end method
