.class Lcom/meizu/common/widget/SelectionButton$1;
.super Ljava/lang/Object;
.source "SelectionButton.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SelectionButton;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SelectionButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SelectionButton;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    .line 314
    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 316
    .local v0, "index":I
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton$1;->this$0:Lcom/meizu/common/widget/SelectionButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SelectionButton;->access$000(Lcom/meizu/common/widget/SelectionButton;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$200()[F

    move-result-object v1

    .line 320
    .local v1, "interpolations":[F
    :goto_0
    aget v2, v1, v0

    return v2

    .line 317
    .end local v1    # "interpolations":[F
    :cond_0
    invoke-static {}, Lcom/meizu/common/widget/SelectionButton;->access$100()[F

    move-result-object v1

    .restart local v1    # "interpolations":[F
    goto :goto_0
.end method
