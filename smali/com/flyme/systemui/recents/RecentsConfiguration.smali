.class public Lcom/flyme/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;
    }
.end annotation


# static fields
.field static sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

.field static sPrevConfigurationHashCode:I


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public dragdownCardPadding:F

.field public enterTime:J

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field public isExistMulti:Z

.field public isLandscape:Z

.field public isMistaskEnter:Z

.field public isNeedEnterAnimation:Z

.field public isQuickChange:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public level_scale_running_scapture:I

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field public lockedTaskBoundDis:F

.field public maxDragDownDistance:F

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field public recentsDir:Lcom/flyme/systemui/recents/RecentsConfiguration$RecentsDir;

.field public runningPkgName:Ljava/lang/String;

.field public screenRotation:I

.field searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public stackRect:Landroid/graphics/Rect;

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskFootHeight:I

.field public taskRect:Landroid/graphics/Rect;

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPx:I

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public tasksNum:I

.field public thumbnailRect:Landroid/graphics/Rect;

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public useHardwareLayers:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 150
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isNeedEnterAnimation:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isQuickChange:Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->runningPkgName:Ljava/lang/String;

    .line 154
    iput v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->level_scale_running_scapture:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskRect:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->thumbnailRect:Landroid/graphics/Rect;

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->stackRect:Landroid/graphics/Rect;

    .line 181
    const v0, 0x10c000d

    .line 180
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    const v0, 0x10c000f

    .line 182
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 185
    const v0, 0x10c000e

    .line 184
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    const v0, 0x10c0005

    .line 186
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 175
    return-void
.end method

.method public static getInstance()Lcom/flyme/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)Lcom/flyme/systemui/recents/RecentsConfiguration;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 192
    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 196
    .local v0, "configHashCode":I
    sget v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 197
    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/flyme/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 198
    sput v0, Lcom/flyme/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 202
    :goto_0
    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/flyme/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V

    .line 203
    sget-object v1, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    return-object v1

    .line 200
    :cond_1
    sget-object v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->sInstance:Lcom/flyme/systemui/recents/RecentsConfiguration;

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, v2, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    goto :goto_0
.end method


# virtual methods
.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 415
    iget v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 417
    .local v0, "searchBarSize":I
    const/4 v0, 0x0

    .line 420
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 413
    :goto_0
    return-void

    .line 425
    :cond_0
    add-int/lit8 v1, p3, 0x0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .local v0, "searchBarBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 399
    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 401
    sub-int v1, p1, p4

    invoke-virtual {p5, v2, p3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    :goto_0
    return-void

    .line 404
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 362
    iget v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method update(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 214
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 218
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v6, Lcom/flyme/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 219
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_0

    .line 220
    sput-boolean v7, Lcom/flyme/systemui/recents/misc/Console;->Enabled:Z

    .line 224
    :cond_0
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->screenRotation:I

    .line 225
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 226
    const v6, 0x7f0e0010

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 227
    const v6, 0x7f0e0011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 230
    iget-object v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v8, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    const v6, 0x7f0b043c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 233
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    .line 238
    const v6, 0x7f10003d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 237
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 240
    const v6, 0x7f10003e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 239
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 243
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v6

    const/16 v8, 0x1e

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 246
    const v6, 0x7f0b0435

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 247
    sget-object v6, Lcom/flyme/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 251
    const v6, 0x7f100048

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 250
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 252
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 253
    .local v4, "stackOverscrollPctValue":Landroid/util/TypedValue;
    const v6, 0x7f0b0437

    invoke-virtual {v2, v6, v4, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 255
    const v6, 0x7f100049

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 257
    const v6, 0x7f0b043a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPx:I

    .line 258
    iget-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v6, :cond_2

    .line 259
    const v6, 0x7f0b0438

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 266
    :goto_1
    const v6, 0x7f10003f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 265
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 268
    const v6, 0x7f100042

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 267
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 272
    const v6, 0x7f100040

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 271
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    .line 274
    const v6, 0x7f100043

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 273
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 276
    const v6, 0x7f100044

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 275
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 278
    const v6, 0x7f100041

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 277
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    .line 280
    const v6, 0x7f100045

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 279
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 282
    const v6, 0x7f100047

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 281
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 284
    const v6, 0x7f0b042f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 283
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 285
    const v6, 0x7f0b042c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 286
    const v6, 0x7f0b0430

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 287
    const v6, 0x7f0b042d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 288
    const v6, 0x7f0b042e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 290
    const v6, 0x7f0b0431

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 289
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 291
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 292
    .local v5, "thumbnailAlphaValue":Landroid/util/TypedValue;
    const v6, 0x7f0b0432

    invoke-virtual {v2, v6, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 293
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 297
    const v6, 0x7f0a00da

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 296
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 299
    const v6, 0x7f0a00db

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 298
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 301
    const v6, 0x7f0a00dc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 300
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 303
    const v6, 0x7f0a00df

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 302
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 304
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 305
    .local v0, "affMinAlphaPctValue":Landroid/util/TypedValue;
    const v6, 0x7f0b043d

    invoke-virtual {v2, v6, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 306
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 309
    const v6, 0x7f0b0433

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 310
    const v6, 0x7f0b0434

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskFootHeight:I

    .line 312
    const v6, 0x7f10003c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 311
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 316
    const v6, 0x7f100046

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 315
    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 319
    const v6, 0x7f0e0004

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 320
    const v6, 0x7f10004a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 321
    const v6, 0x7f0e0005

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 322
    const v6, 0x7f10004b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 324
    const v6, 0x7f0b0440

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->dragdownCardPadding:F

    .line 325
    const v6, 0x7f0b0441

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->maxDragDownDistance:F

    .line 326
    const v6, 0x7f0b0444

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->lockedTaskBoundDis:F

    .line 212
    return-void

    .end local v0    # "affMinAlphaPctValue":Landroid/util/TypedValue;
    .end local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    .end local v5    # "thumbnailAlphaValue":Landroid/util/TypedValue;
    :cond_1
    move v6, v8

    .line 225
    goto/16 :goto_0

    .line 261
    .restart local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    :cond_2
    const v6, 0x7f0b0439

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    goto/16 :goto_1
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 353
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/flyme/systemui/recents/misc/SystemServicesProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    const-string/jumbo v0, "development_settings_enabled"

    .line 345
    invoke-virtual {p2, p1, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 348
    const-string/jumbo v0, "lock_to_app_enabled"

    .line 347
    invoke-virtual {p2, p1, v0}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 343
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v1, v2

    .line 347
    goto :goto_1
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    return-void
.end method
