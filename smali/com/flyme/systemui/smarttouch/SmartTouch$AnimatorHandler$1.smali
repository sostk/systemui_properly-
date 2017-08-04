.class Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 461
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 466
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$1;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object v0, v0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->-get6(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    return-void
.end method
