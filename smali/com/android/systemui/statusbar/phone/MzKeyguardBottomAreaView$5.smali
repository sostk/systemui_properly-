.class Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;
.super Ljava/lang/Object;
.source "MzKeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;->launchPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

.field final synthetic val$tm:Landroid/telecom/TelecomManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;
    .param p2, "val$tm"    # Landroid/telecom/TelecomManager;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;->val$tm:Landroid/telecom/TelecomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzKeyguardBottomAreaView$5;->val$tm:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 399
    return-void
.end method