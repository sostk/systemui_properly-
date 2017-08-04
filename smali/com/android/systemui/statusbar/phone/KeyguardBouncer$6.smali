.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .param p2, "val$gd"    # Landroid/view/GestureDetector;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->val$gd:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$6;->val$gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
