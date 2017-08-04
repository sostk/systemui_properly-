.class public final enum Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
.super Ljava/lang/Enum;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/smarttouch/SmartTouchView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const-string/jumbo v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const-string/jumbo v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->$VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->$VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object v0
.end method
