.class Lcom/meizu/media/music/KeyguardMusicView$12;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/music/KeyguardMusicView;->prevMusicInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicView;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicView;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1369
    monitor-enter p0

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get1(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1371
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get2(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1372
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get2(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1373
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get3(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap9(Lcom/meizu/media/music/KeyguardMusicView;Landroid/widget/ImageView;)V

    .line 1374
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    iget-object v1, p0, Lcom/meizu/media/music/KeyguardMusicView$12;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v1}, Lcom/meizu/media/music/KeyguardMusicView;->-get2(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap9(Lcom/meizu/media/music/KeyguardMusicView;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1368
    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1384
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1363
    return-void
.end method
