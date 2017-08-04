.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState()V
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
    .line 414
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get1(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get1(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setAlpha(F)V

    .line 419
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-set0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Z)Z

    .line 416
    return-void
.end method
