.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;->onHideCallBack()V

    .line 551
    :cond_0
    return-void
.end method
