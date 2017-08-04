.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 6482
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v3

    if-eqz p1, :cond_4

    move v0, v1

    .line 6485
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    .line 6484
    invoke-virtual {v3, v0, v4}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->updateState(IZ)V

    .line 6486
    if-eqz p1, :cond_6

    .line 6487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyExpandedOnKeyguardShade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6491
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 6498
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_1

    .line 6499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onMusicVisibleChanged(Z)V

    .line 6501
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get31(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6504
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get24(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    .line 6505
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    .line 6506
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationPanelFullyExpandedOnKeyguardShade()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6507
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsFullyExpanded()Z

    move-result v1

    .line 6504
    :cond_3
    :goto_4
    invoke-virtual {v0, v3, v4, v1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingState(ZZZ)V

    .line 6483
    return-void

    :cond_4
    move v0, v2

    .line 6484
    goto/16 :goto_0

    .line 6489
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BackDropView;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    goto :goto_1

    .line 6493
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZZZ)V

    .line 6496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/auto_color/NotificationPanelColorUtil;->updateColors()V

    goto :goto_2

    .line 6502
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_8
    move v1, v2

    .line 6507
    goto :goto_4
.end method
