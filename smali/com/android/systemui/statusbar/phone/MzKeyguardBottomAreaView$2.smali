.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2$1;-><init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method
