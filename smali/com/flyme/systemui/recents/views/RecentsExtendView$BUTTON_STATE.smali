.class final enum Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;
.super Ljava/lang/Enum;
.source "RecentsExtendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/RecentsExtendView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BUTTON_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

.field public static final enum ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

.field public static final enum DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

.field public static final enum NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    new-instance v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    const-string/jumbo v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->ACTIVE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->NORMAL:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->DISABLE:Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->$VALUES:[Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    return-object v0
.end method

.method public static values()[Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;->$VALUES:[Lcom/flyme/systemui/recents/views/RecentsExtendView$BUTTON_STATE;

    return-object v0
.end method
