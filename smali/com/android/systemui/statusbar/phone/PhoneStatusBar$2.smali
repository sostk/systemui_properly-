.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    .line 562
    .local v0, "wasUsing":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set12(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 568
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ticker_gets_heads_up"

    .line 568
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 570
    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "heads up is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "enabled"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 573
    const-string/jumbo v1, "PhoneStatusBar"

    const-string/jumbo v3, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get26(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap23(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 560
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 562
    goto :goto_0

    :cond_2
    move v3, v2

    .line 568
    goto :goto_1

    .line 570
    :cond_3
    const-string/jumbo v1, "disabled"

    goto :goto_2

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_3
.end method
