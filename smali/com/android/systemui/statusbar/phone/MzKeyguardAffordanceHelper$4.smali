.class Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$4;
.super Ljava/lang/Object;
.source "MzKeyguardAffordanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;->-get4(Lcom/android/systemui/statusbar/phone/MzKeyguardAffordanceHelper;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->startWallpaperActivity()V

    .line 257
    return-void
.end method
