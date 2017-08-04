.class Lcom/android/systemui/statusbar/phone/QSTileHost$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;Lcom/flyme/systemui/statusbar/policy/SmartTouchController;Lcom/flyme/systemui/statusbar/policy/NfcController;Lcom/flyme/systemui/statusbar/policy/PowerSaveController;Lcom/flyme/systemui/statusbar/policy/RingerModeController;Lcom/flyme/systemui/statusbar/policy/VpnController;Lcom/flyme/systemui/statusbar/policy/ScreenshotController;Lcom/flyme/systemui/statusbar/policy/DriveModeController;Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;Lcom/flyme/systemui/statusbar/policy/AcceleratorController;Lcom/flyme/systemui/statusbar/policy/DataSaveController;Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 6
    .param p1, "newUserId"    # I

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get0(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "shortcut_order"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-set0(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get4(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get5(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$TileListChangeListener;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-wrap0(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get6(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile;

    .line 190
    .local v0, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    goto :goto_1

    .line 184
    .end local v0    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v1    # "tile$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get0(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "shortcut_order_guest"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-set0(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    goto :goto_0

    .line 192
    .restart local v1    # "tile$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get3(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/SecurityController;->onUserSwitched(I)V

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$1;->this$0:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-get2(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->onUserSwitched(I)V

    .line 179
    return-void
.end method
