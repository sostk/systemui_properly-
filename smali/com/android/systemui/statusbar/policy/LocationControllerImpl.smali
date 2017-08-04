.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->locationSettingsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 52
    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 68
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;-><init>(Landroid/content/Context;)V

    .line 79
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 81
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 80
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 84
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.location.MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v6, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    .line 94
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    move-object v5, p1

    move-object v9, v4

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->refreshViews()V

    .line 65
    return-void
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    .prologue
    .line 167
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 169
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 170
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 172
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 173
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 177
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 180
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 181
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    const/4 v8, 0x1

    return v8

    .line 176
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "numOps":I
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 158
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_share_location"

    .line 159
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v2

    .line 214
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 215
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    .line 212
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    .line 219
    return-void
.end method

.method private refreshViews()V
    .locals 5

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "location"

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f09020a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    const v3, 0x7f0205c1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 206
    .local v0, "hadActiveLocationRequests":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->refreshViews()V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->locationSettingsChanged(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 104
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "location_mode"

    .line 148
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 147
    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 149
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "enabled"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 235
    .local v1, "enabled":Z
    const-string/jumbo v6, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 237
    const v2, 0x7f0203e5

    .line 238
    .local v2, "iconId":I
    const v4, 0x7f090209

    .line 239
    .local v4, "textResId":I
    const/4 v5, 0x1

    .line 250
    .local v5, "visible":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 251
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v7, "location"

    invoke-virtual {v6, v7, v2, v8, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 253
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v7, "location"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 224
    .end local v3    # "text":Ljava/lang/String;
    :goto_1
    return-void

    .line 240
    .end local v2    # "iconId":I
    .end local v4    # "textResId":I
    .end local v5    # "visible":Z
    :cond_0
    const-string/jumbo v6, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    .line 246
    :cond_1
    const v2, 0x7f0205c1

    .line 247
    .restart local v2    # "iconId":I
    const v4, 0x7f090208

    .line 248
    .restart local v4    # "textResId":I
    const/4 v5, 0x1

    .restart local v5    # "visible":Z
    goto :goto_0

    .line 242
    .end local v2    # "iconId":I
    .end local v4    # "textResId":I
    .end local v5    # "visible":Z
    :cond_2
    const/4 v5, 0x0

    .line 243
    .restart local v5    # "visible":Z
    const/4 v4, 0x0

    .restart local v4    # "textResId":I
    const/4 v2, 0x0

    .line 240
    .restart local v2    # "iconId":I
    goto :goto_0

    .line 255
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v7, "location"

    invoke-virtual {v6, v7, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public setLocationEnabled(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 126
    .local v1, "currentUserId":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x0

    return v3

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 133
    const/4 v2, 0x3

    .line 137
    .local v2, "mode":I
    :goto_0
    const-string/jumbo v3, "location_mode"

    .line 136
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v3

    return v3

    .line 133
    .end local v2    # "mode":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "mode":I
    goto :goto_0
.end method
