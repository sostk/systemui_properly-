.class Lcom/flyme/systemui/recents/views/TaskViewHeader$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskViewHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskViewHeader;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/TaskViewHeader$1;->this$0:Lcom/flyme/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/flyme/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 373
    return-void
.end method
