.class Lcom/flyme/systemui/recents/RecentsWindow$7;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->hasCancel:Z

    .line 464
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 443
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->hasCancel:Z

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v1}, Lcom/flyme/systemui/recents/RecentsWindow;->-get1(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 445
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v1}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/RecentsWindow$7$1;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/recents/RecentsWindow$7$1;-><init>(Lcom/flyme/systemui/recents/RecentsWindow$7;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 442
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v0    # "km":Landroid/app/KeyguardManager;
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$7;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-static {v1}, Lcom/flyme/systemui/recents/RecentsWindow;->-get0(Lcom/flyme/systemui/recents/RecentsWindow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/systemui/recents/RecentsWindow$7$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/recents/RecentsWindow$7$2;-><init>(Lcom/flyme/systemui/recents/RecentsWindow$7;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 469
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    return-void
.end method
