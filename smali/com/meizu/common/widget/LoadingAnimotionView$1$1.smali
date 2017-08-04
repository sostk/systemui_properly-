.class Lcom/meizu/common/widget/LoadingAnimotionView$1$1;
.super Ljava/lang/Object;
.source "LoadingAnimotionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingAnimotionView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/LoadingAnimotionView$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingAnimotionView$1;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1$1;->this$1:Lcom/meizu/common/widget/LoadingAnimotionView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1$1;->this$1:Lcom/meizu/common/widget/LoadingAnimotionView$1;

    iget-object v0, v0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingAnimotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimotionView$1$1;->this$1:Lcom/meizu/common/widget/LoadingAnimotionView$1;

    iget-object v0, v0, Lcom/meizu/common/widget/LoadingAnimotionView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimotionView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingAnimotionView;->access$100(Lcom/meizu/common/widget/LoadingAnimotionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 201
    :cond_0
    return-void
.end method
