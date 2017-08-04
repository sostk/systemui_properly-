.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
    .param p2, "val$gd"    # Landroid/view/GestureDetector;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;->val$gd:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$16;->val$gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
