.class public Lcom/meizu/keyguard/KeyguardMobEventUtils;
.super Ljava/lang/Object;
.source "KeyguardMobEventUtils.java"


# static fields
.field static mCollectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "KeyguardMobEventUtils"

    const-string/jumbo v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lcom/meizu/stats/UsageStatsProxy;->getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 114
    :cond_0
    return-void
.end method

.method public static collect3rdPartEngineVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 141
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    const-string/jumbo v1, "keyguard_lockscreen_engine_version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "keyguard_action_lockscreen_engines_version"

    .line 144
    sget-object v1, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    .line 143
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method public static collectFlymeLock(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string/jumbo v0, "KeyguardMobEventUtils"

    const-string/jumbo v1, "collectFlymeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 186
    const-string/jumbo v0, "keyguard_flyme_lock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static collectMusicViewShow(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 160
    const-string/jumbo v0, "keyguard_music_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static collectScreenOnNoTouch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 96
    const-string/jumbo v0, "keyguard_action_screenon_no_touch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static collectSlideLeftCamera(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string/jumbo v0, "KeyguardMobEventUtils"

    const-string/jumbo v1, "collectSlideLeftCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 49
    const-string/jumbo v0, "keyguard_slide_left_camera"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static collectSlideUpCamera(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 152
    const-string/jumbo v0, "keyguard_slide_camera"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static collectUnlockMode(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "way"    # I

    .prologue
    const/4 v3, -0x1

    .line 167
    const-string/jumbo v0, "KeyguardMobEventUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "collectUnlockMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,way = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 169
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    if-eq p1, v3, :cond_0

    .line 171
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    const-string/jumbo v1, "into_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    if-eq p2, v3, :cond_1

    .line 174
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    const-string/jumbo v1, "way"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    const-string/jumbo v0, "keyguard_unlock"

    .line 177
    sget-object v1, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mCollectionMap:Ljava/util/Map;

    .line 176
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string/jumbo v0, "KeyguardMobEventUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mUsageStatsProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 131
    sget-object v2, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method private static onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Map;

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/meizu/keyguard/KeyguardMobEventUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    invoke-virtual {v0, p0, v1, p2}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    :cond_0
    return-void
.end method
