.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 372
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 375
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 376
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    const-string/jumbo v4, "accessibility_display_inversion_enabled"

    .line 376
    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 380
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 379
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Z)Z

    .line 374
    return-void

    :cond_0
    move v0, v2

    .line 376
    goto :goto_0

    :cond_1
    move v1, v2

    .line 379
    goto :goto_1
.end method
