.class final enum Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
.super Ljava/lang/Enum;
.source "PullRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PullRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field public static final enum STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field public static final enum STATE_ARC_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field public static final enum STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field public static final enum STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

.field public static final enum STATE_LINE_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const-string/jumbo v1, "STATE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const-string/jumbo v1, "STATE_LINE_MOVE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const-string/jumbo v1, "STATE_LINE_END"

    invoke-direct {v0, v1, v4}, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const-string/jumbo v1, "STATE_ARC_MOVE"

    invoke-direct {v0, v1, v5}, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const-string/jumbo v1, "STATE_ARC_END"

    invoke-direct {v0, v1, v6}, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    const/4 v0, 0x5

    .line 115
    new-array v0, v0, [Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_DEFAULT:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_MOVE:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->$VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    .line 115
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->$VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    return-object v0
.end method
