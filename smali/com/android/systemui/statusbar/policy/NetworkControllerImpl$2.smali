.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    .line 200
    return-void
.end method
