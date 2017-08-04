.class public Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mMsg:I

.field private mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "msg"    # I
    .param p3, "panel"    # Lcom/android/systemui/statusbar/StatusBarPanel;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    iput p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    .line 1545
    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

    .line 1543
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1549
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1550
    .local v0, "action":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1551
    if-nez v0, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/StatusBarPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarPanel;->isInContentArea(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    :cond_0
    return v4

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1554
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1555
    const/4 v1, 0x1

    return v1
.end method
