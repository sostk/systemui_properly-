.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->playHideRootAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .param p2, "val$endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 769
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$11;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 762
    :cond_0
    return-void
.end method
