.class public Lcom/android/systemui/SystemUIMobEventUtils;
.super Ljava/lang/Object;
.source "SystemUIMobEventUtils.java"


# static fields
.field private static mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 351
    const-string/jumbo v0, "SystemUIMobEventUtils"

    const-string/jumbo v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {p0}, Lcom/meizu/stats/UsageStatsProxy;->getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 349
    :cond_0
    return-void
.end method

.method public static collcetClickAppInRecents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 412
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 415
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string/jumbo v1, "app_Name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v1, "multi_task_click_app"

    invoke-static {v1, v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 411
    return-void
.end method

.method public static collcetEnterMultiWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "basePkg"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 453
    const-string/jumbo v1, "SystemUIMobEventUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent multi_task_open, MULTI_TASK_UP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MULTI_TASK_DOWN ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "first"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "second"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v1, "multi_task_open"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 451
    return-void
.end method

.method public static collcetExpendPanelByTouchKeyguard(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 464
    const-string/jumbo v0, "keyguard_slide_down_statusbar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public static collcetQuickchange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 524
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v1, "force_touch_quickchange"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    return-void
.end method

.method public static collcetScreenshotClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string/jumbo v1, "screenshot_notification_action"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 480
    return-void
.end method

.method public static collcetScreenshotKeydown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 469
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 470
    const-string/jumbo v0, "screenshot_keydown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public static collcetScreenshotNotify(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 476
    const-string/jumbo v0, "screenshot_notification"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public static collectAddNotifications(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 205
    .local v0, "isSysApp":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->checkNotificationReceiveFilterPkg(Ljava/lang/String;)Z

    move-result v4

    .line 205
    if-eqz v4, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v4, "SystemUIMobEventUtils"

    .line 209
    const-string/jumbo v5, "packageName cannot be null and null-string, or packageName is filter pkg"

    .line 208
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_1
    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getNotificationText(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;

    move-result-object v1

    .line 213
    .local v1, "notificationText":Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "PackageName"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v6, "ThirdParty"

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v6, "title"

    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->title:Ljava/lang/String;

    :goto_1
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v6, "content"

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$NotificationText;->context:Ljava/lang/String;

    :goto_2
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v4, "key"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getNotificationUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v4, "notifiction_receive"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    return-void

    .line 215
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v5

    .line 216
    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 217
    goto :goto_2
.end method

.method public static collectBlurApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 442
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "blur_state"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v1, "pkg_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v1, "multi_task_blur"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    return-void

    .line 445
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static collectBrightnessSlide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 599
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 600
    const-string/jumbo v0, "brightness_slide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public static collectClearAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 400
    const-string/jumbo v0, "multi_task_clear_all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static collectClearAllNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 225
    const-string/jumbo v0, "notifiction_panel_clear_all_notifications"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static collectClearSingle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v1, "multi_task_clear_single"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 403
    return-void
.end method

.method public static collectClearSingleNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 237
    .local v0, "isSysApp":Z
    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    const-string/jumbo v3, "SystemUIMobEventUtils"

    const-string/jumbo v4, "packageName cannot be null or null-string!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 241
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "PackageName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v4, "ThirdParty"

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v3, "mobevent_notifiction_panel_clear_single_notification"

    invoke-static {v3, v5, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    return-void

    .line 243
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static collectClickNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 135
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "shortCutName cannot be null or null-string!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobevent_click_number_of_shortcut_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static collectClickRedPacketsDropzone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 501
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    const-string/jumbo v1, "SystemUIMobEventUtils"

    const-string/jumbo v2, "collectClickRedPacketsDropzone: no source app specified, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 505
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "click_redpackets_dropzone_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string/jumbo v1, "click_redpackets_dropzone"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    return-void
.end method

.method public static collectClickRedPacketsNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 512
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    const-string/jumbo v1, "SystemUIMobEventUtils"

    const-string/jumbo v2, "collectClickRedPacketsNotification: no source app specified, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 516
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "click_redpackets_notification_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string/jumbo v1, "click_redpackets_notification"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 510
    return-void
.end method

.method public static collectEnterMultiTask(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I
    .param p2, "enterWay"    # Ljava/lang/String;
    .param p3, "isMistask"    # Z

    .prologue
    .line 423
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "app_amount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "enter_way"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v2, "enter_mistake"

    if-eqz p3, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v1, "multi_task_enter"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-void

    .line 428
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static collectKeyguardOnNotification(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasNotification"    # Z

    .prologue
    .line 532
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "notification"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v1, "keyguard_on"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 531
    return-void

    .line 534
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static collectLockOrUnlockApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "lock_state"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, "pkg_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "multi_task_lock_unlock_app"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 432
    return-void
.end method

.method public static collectLongPressNumberOfShortCut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 588
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 589
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "shortCutName cannot be null or null-string!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 594
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v1, "shortcut_longpress"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 587
    return-void
.end method

.method public static collectNotiPanelFullOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 182
    const-string/jumbo v0, "notifiction_panel_full_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static collectNotificationClicked(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    const-string/jumbo v2, "SystemUIMobEventUtils"

    const-string/jumbo v3, "packageName cannot be null or null-string!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 256
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "PackageName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v5, "ThirdParty"

    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v2, "inbox"

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v2, "key"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getNotificationUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v2, "notifiction_icon_intent_click"

    invoke-static {v2, v6, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-void

    :cond_2
    move v2, v4

    .line 259
    goto :goto_0

    :cond_3
    move v4, v3

    .line 260
    goto :goto_1
.end method

.method public static collectNotificationFilter(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 551
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 552
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const-string/jumbo v1, "SystemUIMobEventUtils"

    const-string/jumbo v2, "packageName cannot be null or null-string!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "PackageName"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v2, "filter_reason"

    iget-object v1, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->isLowPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    const/4 v1, 0x0

    .line 558
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v1, "category"

    iget-object v2, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v1, "notification_filter"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 550
    return-void

    .line 559
    :cond_1
    iget-object v1, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static collectNotificationInbox(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 565
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v1, "notification_inbox"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 564
    return-void
.end method

.method public static collectNotificationInboxSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 583
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 584
    const-string/jumbo v0, "notification_inbox_setting"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public static collectNotifictionLongpress(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isSysApp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 539
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 540
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    :cond_0
    const-string/jumbo v1, "SystemUIMobEventUtils"

    const-string/jumbo v2, "packageName cannot be null or null-string!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 544
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "PackageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v2, "ThirdParty"

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v1, "notifiction_longpress"

    invoke-static {v1, v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 538
    return-void

    .line 546
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;
    .param p2, "isOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 149
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "shortCutName cannot be null or null-string!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "ON_OFF_STATE"

    if-eqz p2, :cond_2

    const-string/jumbo v1, "on"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobevent_on_off_state_of_shortcut_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    return-void

    .line 154
    :cond_2
    const-string/jumbo v1, "off"

    goto :goto_0
.end method

.method public static collectPositionOfShortCut(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortCutName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 165
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "shortCutName cannot be null or null-string!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "POSITION"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobevent_position_of_shortcut_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    return-void
.end method

.method public static collectRedPacketsDropzone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 490
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    const-string/jumbo v1, "SystemUIMobEventUtils"

    const-string/jumbo v2, "collectRedPacketsDropzone: no source app specified, ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "redpackets_dropzone_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v1, "redpackets_dropzone"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 488
    return-void
.end method

.method public static collectSecondNotiPanelFullOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 193
    const-string/jumbo v0, "second_notifiction_panel_full_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static collectShortcutSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 574
    const-string/jumbo v0, "shortcut_setting"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public static collectSystemSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 579
    const-string/jumbo v0, "system_setting"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 365
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 366
    const-string/jumbo v0, "SystemUIMobEventUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v2, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 376
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v1, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v2, "smarttouch"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onEventSmartTouchGesture(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 389
    invoke-static {p0}, Lcom/android/systemui/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v0, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "gesture_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v1, "smarttouch_gesture"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method private static onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x0

    .line 358
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 359
    const-string/jumbo v0, "SystemUIMobEventUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", properties = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/android/systemui/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    invoke-virtual {v0, p0, v3, p2}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    :cond_0
    return-void
.end method
