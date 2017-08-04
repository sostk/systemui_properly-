.class public final enum Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
.super Ljava/lang/Enum;
.source "FrameStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

.field public static final enum FLOAT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

.field public static final enum INT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

.field public static final enum OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    const-string/jumbo v1, "INT"

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->INT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    .line 24
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    const-string/jumbo v1, "FLOAT"

    invoke-direct {v0, v1, v3}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->FLOAT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    .line 29
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    sget-object v1, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->INT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->FLOAT:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->OTHER:Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->$VALUES:[Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;->$VALUES:[Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/flyme/activeview/moveline/item/FrameStyle$PropertyValueType;

    return-object v0
.end method
