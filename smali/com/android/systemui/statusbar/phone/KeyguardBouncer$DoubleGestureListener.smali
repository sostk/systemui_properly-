.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 583
    const-string/jumbo v0, "KeyguardBouncer"

    const-string/jumbo v1, "onDoubleTapEvent return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 590
    const-string/jumbo v0, "KeyguardBouncer"

    const-string/jumbo v1, "gotosleep by double tap in bouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$DoubleGestureListener;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 594
    :cond_1
    return v4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
