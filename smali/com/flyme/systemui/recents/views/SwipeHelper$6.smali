.class Lcom/flyme/systemui/recents/views/SwipeHelper$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/SwipeHelper;->dragDownChild(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/SwipeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/SwipeHelper;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flyme/systemui/recents/views/SwipeHelper;->mDragDownToBottom:Z

    .line 351
    return-void
.end method
