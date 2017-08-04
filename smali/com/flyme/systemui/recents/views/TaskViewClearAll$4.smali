.class Lcom/flyme/systemui/recents/views/TaskViewClearAll$4;
.super Ljava/lang/Object;
.source "TaskViewClearAll.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewClearAll;->updateMemCircle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewClearAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$4;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewClearAll$4;->this$0:Lcom/flyme/systemui/recents/views/TaskViewClearAll;

    iget-object v1, v0, Lcom/flyme/systemui/recents/views/TaskViewClearAll;->clearAllBackground:Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/views/TaskViewClearAllBackground;->updateProgress(F)V

    .line 194
    return-void
.end method
