.class Lcom/android/systemui/keyguard/ChargeViewUtils$3;
.super Ljava/lang/Object;
.source "ChargeViewUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ChargeViewUtils;->fadeOutAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/ChargeViewUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/ChargeViewUtils;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$3;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$3;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$3;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$3;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$3;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 261
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    return-void
.end method
