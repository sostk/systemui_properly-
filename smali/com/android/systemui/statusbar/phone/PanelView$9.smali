.class Lcom/android/systemui/statusbar/phone/PanelView$9;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V
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
    .line 1113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    .line 1117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    .line 1116
    if-eq v0, v1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isKeyguardShadeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(FZ)V

    .line 1124
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->-set1(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 1115
    :cond_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(FZ)V

    goto :goto_0
.end method
