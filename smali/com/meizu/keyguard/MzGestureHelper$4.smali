.class Lcom/meizu/keyguard/MzGestureHelper$4;
.super Landroid/database/ContentObserver;
.source "MzGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzGestureHelper;->registerSmartWallpaperStateObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzGestureHelper;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzGestureHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper$4;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    iput-object p3, p0, Lcom/meizu/keyguard/MzGestureHelper$4;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 448
    iget-object v1, p0, Lcom/meizu/keyguard/MzGestureHelper$4;->val$resolver:Landroid/content/ContentResolver;

    .line 449
    const-string/jumbo v2, "set_wallpaper_simultaneously"

    .line 450
    const/4 v3, 0x0

    .line 447
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, "state":I
    const-string/jumbo v1, "MzGestureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange smart wallpaper state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method
