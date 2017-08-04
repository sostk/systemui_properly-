.class Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHideListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method private constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/app/SlideNotice$SlideViewController;
    .param p2, "x1"    # Lcom/meizu/common/app/SlideNotice$1;

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    .line 1050
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    const/4 v1, 0x1

    iput v1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    .line 1045
    return-void
.end method
