.class final enum Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;
.super Ljava/lang/Enum;
.source "TargetViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UserGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

.field public static final enum UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v6}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "ONE"

    invoke-direct {v0, v1, v7}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const-string/jumbo v1, "DOUBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->LEFT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->UP:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOWN:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->ONE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->$VALUES:[Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->$VALUES:[Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    return-object v0
.end method
