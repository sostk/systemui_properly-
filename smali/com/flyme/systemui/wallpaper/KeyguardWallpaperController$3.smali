.class Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-wrap0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get1(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "SHOW_LOCK_SCREEN_POSTER_ICON"

    .line 55
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get1(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "is_allow_show_text_in_lockscreen"

    .line 57
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get1(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "lockscreen_poster_title"

    .line 59
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get1(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "lockscreen_poster_description"

    .line 61
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$3;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-get0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)Landroid/database/ContentObserver;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    return-void
.end method
