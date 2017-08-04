.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V
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
    .line 448
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 451
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get3(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get4(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get3(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 454
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get4(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setAlpha(F)V

    .line 455
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-set0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Z)Z

    .line 450
    return-void
.end method
