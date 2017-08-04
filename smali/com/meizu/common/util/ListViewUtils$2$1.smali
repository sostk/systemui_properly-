.class Lcom/meizu/common/util/ListViewUtils$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewUtils$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/util/ListViewUtils$2;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewUtils$2;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/meizu/common/util/ListViewUtils$2$1;->this$1:Lcom/meizu/common/util/ListViewUtils$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2$1;->this$1:Lcom/meizu/common/util/ListViewUtils$2;

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2$1;->this$1:Lcom/meizu/common/util/ListViewUtils$2;

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils$2;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-interface {v0}, Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;->onEndResetListView()V

    goto :goto_0
.end method
