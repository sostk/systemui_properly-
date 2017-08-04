.class Lcom/meizu/media/music/KeyguardMusicController$7;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"

# interfaces
.implements Lcom/meizu/keyguard/utils/AsyncTaskUtils$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/music/KeyguardMusicController;->updateMusicCollectionAndPlaymode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/music/KeyguardMusicController;


# direct methods
.method constructor <init>(Lcom/meizu/media/music/KeyguardMusicController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/media/music/KeyguardMusicController;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "collection"    # Z
    .param p2, "playmode"    # I

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p1}, Lcom/meizu/media/music/KeyguardMusicController;->-set3(Lcom/meizu/media/music/KeyguardMusicController;Z)Z

    .line 1033
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0, p2}, Lcom/meizu/media/music/KeyguardMusicController;->-set4(Lcom/meizu/media/music/KeyguardMusicController;I)I

    .line 1034
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->setCollectionImage()V

    .line 1035
    iget-object v0, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v0}, Lcom/meizu/media/music/KeyguardMusicController;->-get4(Lcom/meizu/media/music/KeyguardMusicController;)Lcom/meizu/media/music/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/media/music/KeyguardMusicView;->setPlayModeImage()V

    .line 1036
    const-string/jumbo v0, "KeyguardMusicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "3.collect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get3(Lcom/meizu/media/music/KeyguardMusicController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",playmode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/media/music/KeyguardMusicController$7;->this$0:Lcom/meizu/media/music/KeyguardMusicController;

    invoke-static {v2}, Lcom/meizu/media/music/KeyguardMusicController;->-get8(Lcom/meizu/media/music/KeyguardMusicController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void
.end method
