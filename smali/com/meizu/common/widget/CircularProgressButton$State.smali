.class public final enum Lcom/meizu/common/widget/CircularProgressButton$State;
.super Ljava/lang/Enum;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/CircularProgressButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/CircularProgressButton$State;

.field public static final enum COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

.field public static final enum ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

.field public static final enum IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

.field public static final enum PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 317
    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/meizu/common/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    new-instance v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/meizu/common/widget/CircularProgressButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    const/4 v0, 0x4

    .line 316
    new-array v0, v0, [Lcom/meizu/common/widget/CircularProgressButton$State;

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->COMPLETE:Lcom/meizu/common/widget/CircularProgressButton$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->$VALUES:[Lcom/meizu/common/widget/CircularProgressButton$State;

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
    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/CircularProgressButton$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    .line 316
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/CircularProgressButton$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/CircularProgressButton$State;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/meizu/common/widget/CircularProgressButton$State;->$VALUES:[Lcom/meizu/common/widget/CircularProgressButton$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/CircularProgressButton$State;

    return-object v0
.end method
