.class Lcom/meizu/media/music/KeyguardMusicView$7;
.super Ljava/lang/Object;
.source "KeyguardMusicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicView;
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
    .line 1280
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicView$7;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicView$7;->this$0:Lcom/meizu/media/music/KeyguardMusicView;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicView;->-wrap4(Lcom/meizu/media/music/KeyguardMusicView;)V

    .line 1282
    return-void
.end method
