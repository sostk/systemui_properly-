.class Lcom/android/systemui/keyguard/ChargeViewUtils$2;
.super Ljava/lang/Object;
.source "ChargeViewUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/ChargeViewUtils;->fadeInAnimator()V
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
    .line 216
    iput-object p1, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$2;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$2;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 227
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/keyguard/ChargeViewUtils$2;->this$0:Lcom/android/systemui/keyguard/ChargeViewUtils;

    invoke-static {v0}, Lcom/android/systemui/keyguard/ChargeViewUtils;->-get0(Lcom/android/systemui/keyguard/ChargeViewUtils;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 222
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    return-void
.end method
