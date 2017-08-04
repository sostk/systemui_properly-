.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveModeChanged(Z)V
    .locals 1
    .param p1, "save"    # Z

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap5(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 632
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 637
    return-void
.end method
