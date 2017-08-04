.class Lcom/meizu/common/util/SearchAnimHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/SearchAnimHelper;->startSearchExpandAnim(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/SearchAnimHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/SearchAnimHelper;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/common/util/SearchAnimHelper$1;->this$0:Lcom/meizu/common/util/SearchAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper$1;->this$0:Lcom/meizu/common/util/SearchAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/util/SearchAnimHelper;->access$000(Lcom/meizu/common/util/SearchAnimHelper;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 100
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper$1;->this$0:Lcom/meizu/common/util/SearchAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/util/SearchAnimHelper;->access$000(Lcom/meizu/common/util/SearchAnimHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/util/SearchAnimHelper$1;->this$0:Lcom/meizu/common/util/SearchAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/util/SearchAnimHelper;->access$100(Lcom/meizu/common/util/SearchAnimHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
