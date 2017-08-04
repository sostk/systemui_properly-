.class public Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MzKeyguardFindPhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 876
    const-string/jumbo v0, "FindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$DoubleGestureListener;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->mSingleTap:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 878
    const/4 v0, 0x1

    return v0
.end method
