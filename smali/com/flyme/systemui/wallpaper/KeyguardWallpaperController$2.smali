.class Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->-set0(Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    .line 167
    return-void
.end method
