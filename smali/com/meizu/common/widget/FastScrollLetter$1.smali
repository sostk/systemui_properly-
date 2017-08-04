.class Lcom/meizu/common/widget/FastScrollLetter$1;
.super Ljava/lang/Object;
.source "FastScrollLetter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FastScrollLetter;

.field final synthetic val$isShow:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FastScrollLetter;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter$1;->this$0:Lcom/meizu/common/widget/FastScrollLetter;

    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/meizu/common/widget/FastScrollLetter$1;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x0

    .line 1193
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter$1;->val$view:Landroid/view/View;

    iget-boolean v2, p0, Lcom/meizu/common/widget/FastScrollLetter$1;->val$isShow:Z

    if-nez v2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1198
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1202
    return-void
.end method
