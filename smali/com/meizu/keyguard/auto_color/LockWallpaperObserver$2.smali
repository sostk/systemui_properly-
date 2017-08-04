.class Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$2;
.super Lcom/meizu/keyguard/auto_color/LockWorkRunnable;
.source "LockWallpaperObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/content/Context;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;
    .param p4, "$anonymous2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$2;->this$0:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/keyguard/auto_color/LockWorkRunnable;-><init>(Landroid/content/Context;Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method


# virtual methods
.method onCompleted()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver$2;->this$0:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->-set0(Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;Lcom/meizu/keyguard/auto_color/LockWorkRunnable;)Lcom/meizu/keyguard/auto_color/LockWorkRunnable;

    .line 97
    return-void
.end method
