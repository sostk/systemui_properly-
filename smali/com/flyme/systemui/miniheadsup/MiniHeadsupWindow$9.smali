.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateSnap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
    .param p2, "val$startY"    # F

    .prologue
    .line 510
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->val$startY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->val$startY:F

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setTranslationY(F)V

    .line 512
    return-void
.end method
