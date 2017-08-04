.class Lcom/android/systemui/ImageWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ImageWallpaper;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$1;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperColorChanged(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$1;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0, p1}, Lcom/android/systemui/ImageWallpaper;->-wrap0(Lcom/android/systemui/ImageWallpaper;I)V

    .line 794
    return-void
.end method
