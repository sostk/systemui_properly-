.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    }
.end annotation


# instance fields
.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSliderAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 138
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$1;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 147
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 149
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 150
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 151
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    const v2, 0x1120029

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 155
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 135
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateIcon(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 267
    :cond_0
    const v1, 0x7f0200d4

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :cond_1
    return-void
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 276
    const-string/jumbo v3, "screen_brightness_mode"

    .line 278
    const/4 v4, -0x2

    .line 275
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 279
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    .line 280
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 272
    .end local v0    # "automatic":I
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 283
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    goto :goto_0
.end method

.method private updateSlider()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 289
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 291
    const-string/jumbo v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    .line 290
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 293
    .local v0, "value":F
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 294
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 288
    .end local v0    # "value":F
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 298
    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 297
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 300
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    goto :goto_0
.end method

.method private updateSliderAnimation()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 307
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/ToggleSlider;->setMaxAnimation(I)V

    .line 308
    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 310
    const-string/jumbo v4, "screen_auto_brightness_adj"

    const/4 v5, 0x0

    .line 309
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 312
    .local v1, "value":F
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 313
    .local v0, "scale":F
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v3, v0}, Lcom/android/systemui/settings/ToggleSlider;->setValueAnimation(F)V

    .line 306
    .end local v1    # "value":F
    :goto_0
    return-void

    .line 315
    .end local v0    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 316
    const-string/jumbo v4, "screen_brightness"

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 315
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 318
    .local v2, "value":I
    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 319
    .restart local v0    # "scale":F
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v3, v0}, Lcom/android/systemui/settings/ToggleSlider;->setValueAnimation(F)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    .line 324
    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V
    .locals 6
    .param p1, "view"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I

    .prologue
    .line 209
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 210
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v4}, Lcom/android/systemui/settings/ToggleSlider;->isRunningAnimation()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    .line 212
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-nez v4, :cond_3

    .line 213
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v3, p4, v4

    .line 214
    .local v3, "val":I
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 215
    if-nez p2, :cond_2

    .line 216
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 238
    .end local v3    # "val":I
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cb$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 239
    .local v1, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 225
    .end local v1    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v2    # "cb$iterator":Ljava/util/Iterator;
    :cond_3
    int-to-float v4, p4

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 226
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    .line 227
    if-nez p2, :cond_2

    .line 228
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 208
    .end local v0    # "adj":F
    .restart local v2    # "cb$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 167
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 171
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-nez v0, :cond_1

    .line 199
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 204
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 189
    return-void

    .line 201
    :cond_1
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    goto :goto_0
.end method
