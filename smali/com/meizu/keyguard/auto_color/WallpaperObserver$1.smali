.class Lcom/meizu/keyguard/auto_color/WallpaperObserver$1;
.super Lcom/meizu/keyguard/auto_color/WorkRunnable;
.source "WallpaperObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/auto_color/WallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/auto_color/WallpaperObserver;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/auto_color/WallpaperObserver;Landroid/content/Context;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/auto_color/WallpaperObserver;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver$1;->this$0:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    invoke-direct {p0, p2, p3}, Lcom/meizu/keyguard/auto_color/WorkRunnable;-><init>(Landroid/content/Context;Lcom/meizu/keyguard/auto_color/WallpaperObserver;)V

    return-void
.end method


# virtual methods
.method onCompleted()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/WallpaperObserver$1;->this$0:Lcom/meizu/keyguard/auto_color/WallpaperObserver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/auto_color/WallpaperObserver;->-set0(Lcom/meizu/keyguard/auto_color/WallpaperObserver;Lcom/meizu/keyguard/auto_color/WorkRunnable;)Lcom/meizu/keyguard/auto_color/WorkRunnable;

    .line 82
    return-void
.end method
