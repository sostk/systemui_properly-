.class Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListViewEnterAnimateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewEnterAnimateUtil;->startItemAnimate(ILandroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

    iput-object p2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

    iget-object v1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->access$000(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->this$0:Lcom/meizu/common/util/ListViewEnterAnimateUtil;

    invoke-static {v0}, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->access$100(Lcom/meizu/common/util/ListViewEnterAnimateUtil;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
