.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "MzKeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-get1(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 155
    return-void

    .line 160
    .restart local v0    # "label":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "label":Ljava/lang/String;
    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 168
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-get1(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-get2(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    .line 171
    const/4 v1, 0x2

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 172
    return v2

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$1;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->launchCamera()V

    .line 175
    return v2

    .line 178
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
