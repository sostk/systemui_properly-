.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 3196
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 3200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraAnimationRunning:Z

    .line 3200
    if-nez v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraShowing:Z

    .line 3200
    if-nez v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCameraTouching:Z

    .line 3200
    if-nez v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get24(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->isInWallpaperArea(FF)Z

    move-result v0

    .line 3200
    if-eqz v0, :cond_1

    .line 3202
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignore double tap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    const/4 v0, 0x0

    return v0

    .line 3205
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_2

    .line 3206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    .line 3207
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "gotosleep by double tap in panel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3211
    :cond_2
    return v4
.end method
