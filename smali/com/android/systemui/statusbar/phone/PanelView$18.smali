.class Lcom/android/systemui/statusbar/phone/PanelView$18;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startCameraHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->-wrap0(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mCameraAnimationRunning:Z

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHintFinished()V

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$18;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onCameraStateChange()V

    .line 1662
    return-void
.end method
