.class Lcom/meizu/media/music/KeyguardMusicView$10;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/music/KeyguardMusicView;->showAnimation(Landroid/view/View;Z)V
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
    .line 1128
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 1131
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->hideLyricContent()V

    .line 1132
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get0(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get17(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get2(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$10;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-get3(Lcom/meizu/media/music/KeyguardMusicView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    return-void
.end method
