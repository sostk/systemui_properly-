.class final Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyGestureDetector"
.end annotation


# instance fields
.field public final listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;Landroid/content/Context;Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;)V
    .locals 1
    .param p1, "this$1"    # Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener;

    .line 246
    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 247
    iput-object p3, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->setIsLongpressEnabled(Z)V

    .line 245
    return-void
.end method


# virtual methods
.method public onUnLock()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->onUnLock()V

    .line 255
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouch$MainTouchListener$MyOnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 251
    return-void
.end method
