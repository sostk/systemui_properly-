.class final enum Lcom/meizu/common/widget/PullRefreshLayout$ViewState;
.super Ljava/lang/Enum;
.source "PullRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PullRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/PullRefreshLayout$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

.field public static final enum VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

.field public static final enum VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

.field public static final enum VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    const-string/jumbo v1, "VIEW_NEED_OFFSET_DOWN"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    const-string/jumbo v1, "VIEW_NEED_OFFSET_UP"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    new-instance v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    const-string/jumbo v1, "VIEW_NO_OFFSET"

    invoke-direct {v0, v1, v4}, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_DOWN:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NEED_OFFSET_UP:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->VIEW_NO_OFFSET:Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->$VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/PullRefreshLayout$ViewState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    .line 119
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/PullRefreshLayout$ViewState;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/meizu/common/widget/PullRefreshLayout$ViewState;->$VALUES:[Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/PullRefreshLayout$ViewState;

    return-object v0
.end method
