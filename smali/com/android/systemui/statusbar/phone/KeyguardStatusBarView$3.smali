.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field final synthetic val$systemIconsCurrentX:I

.field final synthetic val$userSwitcherVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p2, "val$userSwitcherVisible"    # Z
    .param p3, "val$systemIconsCurrentX"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$userSwitcherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$systemIconsCurrentX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$userSwitcherVisible:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 235
    .local v0, "userSwitcherHiding":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$systemIconsCurrentX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 238
    const-wide/16 v2, 0x190

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 239
    if-eqz v0, :cond_2

    const/16 v1, 0x12c

    :goto_1
    int-to-long v4, v1

    .line 236
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 242
    if-eqz v0, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 247
    const-wide/16 v2, 0x0

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 248
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;)V

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 234
    .end local v0    # "userSwitcherHiding":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "userSwitcherHiding":Z
    goto :goto_0

    .line 233
    .end local v0    # "userSwitcherHiding":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "userSwitcherHiding":Z
    goto :goto_0

    .line 239
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 261
    const/high16 v2, 0x3f800000    # 1.0f

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 263
    const-wide/16 v2, 0xc8

    .line 260
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method
