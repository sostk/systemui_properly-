.class Lcom/meizu/common/app/SlideNotice$SlideViewController$2;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;->setAnchor(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 687
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_2

    .line 691
    :cond_0
    :goto_1
    return-void

    .line 686
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$500(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    goto :goto_0

    .line 687
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$600(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v3, v3, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    invoke-static {v2, v0, v3}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$700(Lcom/meizu/common/app/SlideNotice$SlideViewController;Landroid/view/View;I)[I

    move-result-object v1

    .line 689
    .local v1, "position":[I
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$2;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v2, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$800(Lcom/meizu/common/app/SlideNotice$SlideViewController;[I)V

    goto :goto_1
.end method
