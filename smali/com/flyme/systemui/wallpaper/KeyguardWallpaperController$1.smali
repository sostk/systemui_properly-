.class Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;
.super Landroid/database/ContentObserver;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-wrap0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V

    .line 117
    return-void
.end method
