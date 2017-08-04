.class Lcom/flyme/systemui/recents/views/TaskStackView$10;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

.field final synthetic val$animationInfos:[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

.field final synthetic val$taskViews:[Lcom/flyme/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackView;[Lcom/flyme/systemui/recents/views/TaskView;[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackView;
    .param p2, "val$taskViews"    # [Lcom/flyme/systemui/recents/views/TaskView;
    .param p3, "val$animationInfos"    # [Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$taskViews:[Lcom/flyme/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$animationInfos:[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 895
    .local v0, "f":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$taskViews:[Lcom/flyme/systemui/recents/views/TaskView;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 896
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$taskViews:[Lcom/flyme/systemui/recents/views/TaskView;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->this$0:Lcom/flyme/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 893
    return-void

    .line 899
    :cond_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$taskViews:[Lcom/flyme/systemui/recents/views/TaskView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$animationInfos:[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->fromX:F

    iget-object v4, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$animationInfos:[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->toX:F

    iget-object v5, p0, Lcom/flyme/systemui/recents/views/TaskStackView$10;->val$animationInfos:[Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/flyme/systemui/recents/views/TaskStackView$ExitAnimationInfo;->fromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
