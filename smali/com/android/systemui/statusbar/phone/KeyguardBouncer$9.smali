.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideKeyguardViewAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .param p2, "val$endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->mCanceled:Z

    .line 700
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 731
    const-string/jumbo v0, "KeyguardBouncer"

    const-string/jumbo v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->mCanceled:Z

    .line 730
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_2

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardViewBase;->setLayerType(ILandroid/graphics/Paint;)V

    .line 704
    :cond_0
    return-void
.end method
