.class Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingShowListener"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method private constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p2, "x1"    # Lcom/meizu/common/app/SlideNotice$1;

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;->mIsCanceled:Z

    .line 1069
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    const/4 v1, 0x2

    iput v1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    .line 1059
    return-void
.end method
