.class Lcom/meizu/common/widget/EmptyView$1;
.super Ljava/lang/Object;
.source "EmptyView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EmptyView;->setSummary(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EmptyView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EmptyView;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView$1;->this$0:Lcom/meizu/common/widget/EmptyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView$1;->this$0:Lcom/meizu/common/widget/EmptyView;

    invoke-static {v1}, Lcom/meizu/common/widget/EmptyView;->access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 440
    .local v0, "otb":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 441
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView$1;->this$0:Lcom/meizu/common/widget/EmptyView;

    invoke-static {v1}, Lcom/meizu/common/widget/EmptyView;->access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/meizu/common/widget/EmptyView$1$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EmptyView$1$1;-><init>(Lcom/meizu/common/widget/EmptyView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 447
    const/4 v1, 0x1

    return v1
.end method
