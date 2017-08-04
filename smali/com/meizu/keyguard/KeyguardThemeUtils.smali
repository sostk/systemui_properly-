.class public Lcom/meizu/keyguard/KeyguardThemeUtils;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$Security;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$Track;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$Item;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;,
        Lcom/meizu/keyguard/KeyguardThemeUtils$1;
    }
.end annotation


# static fields
.field private static final XMLTAG_DATE:Ljava/lang/Object;

.field private static final XMLTAG_PASSWORD:Ljava/lang/Object;

.field private static final XMLTAG_ROOT:Ljava/lang/Object;

.field private static final XMLTAG_THEME_RECENTS:Ljava/lang/Object;

.field private static final XMLTAG_THEME_SECURITY:Ljava/lang/Object;

.field private static final XMLTAG_THEME_SLIDE:Ljava/lang/Object;

.field private static final XMLTAG_TIME:Ljava/lang/Object;

.field private static final XMLTAG_UNLOCK:Ljava/lang/Object;

.field private static mEnmergencyColor:I

.field private static mInstance:Lcom/meizu/keyguard/KeyguardThemeUtils;

.field private static mNumberColor:I

.field private static mSecurityDateColor:I

.field private static mSecurityDateHorizontal:Z

.field private static mSecurityDateLeft:I

.field private static mSecurityDateSize:F

.field private static mSecurityDateTop:I

.field private static mSecurityTimeHorizontal:Z

.field private static mSecurityTimeLeft:I

.field private static mSecurityTimeTop:I

.field private static mSlideDateColor:I

.field private static mSlideDateHorizontal:Z

.field private static mSlideDateLeft:I

.field private static mSlideDateSize:F

.field private static mSlideDateTop:I

.field private static mSlideTimeHorizontal:Z

.field private static mSlideTimeLeft:I

.field private static mSlideTimeTop:I

.field private static mTipsColor:I

.field private static mUnlockColor:I


# instance fields
.field private LOCAL_DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

.field private mOpenDesktopMask:Ljava/lang/Boolean;

.field private mOpenLockMask:Ljava/lang/Boolean;

.field private mOutRingDiameter:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecents:Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

.field private mSecurity:Lcom/meizu/keyguard/KeyguardThemeUtils$Security;

.field private mSelectType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;

.field private mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

.field private mSlideType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

.field private final mSystemUIThemeFilePath:Ljava/lang/String;

.field private mUnlockIcon:Z

.field private mUnlockString:Ljava/lang/String;

.field private mUseSystemAutoColor:Ljava/lang/Boolean;


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/KeyguardThemeUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap1(Lcom/meizu/keyguard/KeyguardThemeUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->initLocalValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    .line 48
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    .line 49
    sput-boolean v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 50
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    .line 51
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    .line 52
    sput-boolean v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 53
    sput v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    .line 54
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    .line 57
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockColor:I

    .line 58
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mTipsColor:I

    .line 59
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mNumberColor:I

    .line 60
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mEnmergencyColor:I

    .line 66
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    .line 67
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 68
    sput-boolean v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    .line 69
    sput v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    .line 70
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 71
    sput-boolean v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    .line 72
    sput v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    .line 73
    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    .line 78
    const-string/jumbo v0, "KeyguardThemes"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_ROOT:Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "KeyguardThemeSlide"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_SLIDE:Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "KeyguardThemeSecurity"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_SECURITY:Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "Recents"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_RECENTS:Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "keyguard_time"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_TIME:Ljava/lang/Object;

    .line 84
    const-string/jumbo v0, "keyguard_date"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_DATE:Ljava/lang/Object;

    .line 85
    const-string/jumbo v0, "keyguard_unlock"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_UNLOCK:Ljava/lang/Object;

    .line 86
    const-string/jumbo v0, "keyguard_password"

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_PASSWORD:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockIcon:Z

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockString:Ljava/lang/String;

    .line 61
    const/16 v1, 0x10e

    iput v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOutRingDiameter:I

    .line 62
    iput-boolean v2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->LOCAL_DEBUG:Z

    .line 141
    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    iput-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 360
    new-instance v1, Lcom/meizu/keyguard/KeyguardThemeUtils$1;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/KeyguardThemeUtils$1;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;)V

    iput-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 849
    const-string/jumbo v1, "/data/data/com.meizu.customizecenter/theme/com.android.systemui"

    iput-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSystemUIThemeFilePath:Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    .line 354
    invoke-direct {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->initLocalValues()V

    .line 355
    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setLocalValues()V

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.meizu.theme.change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mInstance:Lcom/meizu/keyguard/KeyguardThemeUtils;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mInstance:Lcom/meizu/keyguard/KeyguardThemeUtils;

    .line 376
    :cond_0
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mInstance:Lcom/meizu/keyguard/KeyguardThemeUtils;

    return-object v0
.end method

.method private getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "defaultObj"    # Ljava/lang/Object;

    .prologue
    .line 867
    if-eqz p1, :cond_5

    .line 868
    :try_start_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 869
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 870
    :cond_0
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 871
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 872
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 874
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 875
    :cond_2
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 876
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 877
    :cond_3
    instance-of v2, p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    .line 878
    return-object p1

    .line 880
    :cond_4
    return-object p2

    .line 883
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 886
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-object p2
.end method

.method private initLocalValues()V
    .locals 13

    .prologue
    const/high16 v5, 0x41600000    # 14.0f

    const/4 v12, 0x1

    const/4 v4, -0x1

    const/4 v11, 0x0

    .line 424
    const-string/jumbo v0, "KeyguardThemeUtils"

    const-string/jumbo v1, "setLocalValues"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    .line 429
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    .line 430
    sput-boolean v12, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 431
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    .line 432
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 433
    .local v10, "scale":F
    float-to-double v0, v10

    const-wide v2, 0x401f333333333333L    # 7.8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    .line 434
    sput-boolean v12, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 435
    sput v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    .line 436
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    .line 437
    iput-boolean v11, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockIcon:Z

    .line 438
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->unlock_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockString:Ljava/lang/String;

    .line 439
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockColor:I

    .line 440
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mTipsColor:I

    .line 441
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mNumberColor:I

    .line 442
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mEnmergencyColor:I

    .line 443
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 447
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    .line 448
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 449
    sput-boolean v12, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    .line 450
    sput v11, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    .line 451
    const/16 v0, 0x17

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 452
    sput-boolean v12, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    .line 453
    sput v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    .line 454
    sput v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    .line 455
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    sget v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    sget v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    sget-boolean v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 456
    sget v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    sget v6, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    sget-boolean v7, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 457
    sget v8, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    sget v9, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    move-object v1, p0

    .line 455
    invoke-direct/range {v0 .. v9}, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZIIZFI)V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    .line 458
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;

    sget v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    sget v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 459
    sget-boolean v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    sget v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    sget v6, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 460
    sget-boolean v7, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    sget v8, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    sget v9, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    move-object v1, p0

    .line 458
    invoke-direct/range {v0 .. v9}, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZIIZFI)V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurity:Lcom/meizu/keyguard/KeyguardThemeUtils$Security;

    .line 461
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUseSystemAutoColor:Ljava/lang/Boolean;

    .line 462
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenLockMask:Ljava/lang/Boolean;

    .line 463
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenDesktopMask:Ljava/lang/Boolean;

    .line 466
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    invoke-direct {v0, p0}, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;)V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mRecents:Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    .line 423
    return-void
.end method

.method private parseOrientationStr(Ljava/lang/String;)Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
    .locals 2
    .param p1, "orientationStr"    # Ljava/lang/String;

    .prologue
    .line 824
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->RIGHT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    .line 825
    .local v0, "orientation":Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
    const-string/jumbo v1, "left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->LEFT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    .line 834
    :cond_0
    :goto_0
    return-object v0

    .line 827
    :cond_1
    const-string/jumbo v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->RIGHT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    goto :goto_0

    .line 829
    :cond_2
    const-string/jumbo v1, "up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 830
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->UP:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    goto :goto_0

    .line 831
    :cond_3
    const-string/jumbo v1, "down"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;->DOWN:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    goto :goto_0
.end method

.method private setSecurityValues(Lorg/w3c/dom/NodeList;)V
    .locals 13
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 607
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 609
    :try_start_0
    const-string/jumbo v0, "KeyguardThemeUtils"

    const-string/jumbo v1, "setSecurityValues \u6839\u636eitem(index)\u83b7\u53d6\u8be5\u7d22\u5f15\u5bf9\u5e94\u7684\u8282\u70b9\u5bf9\u8c61"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-interface {p1, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 612
    invoke-interface {p1, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 613
    .local v12, "widgetNode":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_0

    .line 614
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_TIME:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    const-string/jumbo v0, "left"

    .line 615
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    .line 618
    const-string/jumbo v0, "top"

    .line 617
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 620
    const-string/jumbo v0, "horizontal"

    .line 619
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    .line 607
    .end local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 621
    .restart local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_DATE:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const-string/jumbo v0, "left"

    .line 622
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    .line 625
    const-string/jumbo v0, "top"

    .line 624
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 627
    const-string/jumbo v0, "dateFontSize"

    .line 626
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    .line 629
    const-string/jumbo v0, "horizontal"

    .line 628
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    .line 631
    const-string/jumbo v0, "dateFontColor"

    .line 630
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    goto :goto_1

    .line 637
    .end local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 633
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_2
    const-string/jumbo v0, "KeyguardThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no node named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 640
    .end local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_3
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;

    sget v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    sget v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 641
    sget-boolean v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    sget v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    sget v6, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 642
    sget-boolean v7, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    sget v8, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    sget v9, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    move-object v1, p0

    .line 640
    invoke-direct/range {v0 .. v9}, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZIIZFI)V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurity:Lcom/meizu/keyguard/KeyguardThemeUtils$Security;

    .line 606
    return-void
.end method

.method private setSlideValues(Lorg/w3c/dom/NodeList;)V
    .locals 13
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 545
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_8

    .line 546
    const-string/jumbo v0, "KeyguardThemeUtils"

    const-string/jumbo v1, "setSlideValues \u6839\u636eitem(index)\u83b7\u53d6\u8be5\u7d22\u5f15\u5bf9\u5e94\u7684\u8282\u70b9\u5bf9\u8c61"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-interface {p1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_0

    .line 549
    invoke-interface {p1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 550
    .local v12, "widgetNode":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_0

    .line 551
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_TIME:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string/jumbo v0, "left"

    .line 552
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 552
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    .line 555
    const-string/jumbo v0, "top"

    .line 554
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 554
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    .line 557
    const-string/jumbo v0, "horizontal"

    .line 556
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 556
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 545
    .end local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 558
    .restart local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_DATE:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const-string/jumbo v0, "left"

    .line 559
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 559
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    .line 562
    const-string/jumbo v0, "top"

    .line 561
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 561
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    .line 564
    const-string/jumbo v0, "dateFontSize"

    .line 563
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 563
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    .line 566
    const-string/jumbo v0, "horizontal"

    .line 565
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 565
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 568
    const-string/jumbo v0, "dateFontColor"

    .line 567
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 567
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    goto/16 :goto_1

    .line 569
    :cond_2
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_UNLOCK:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    const-string/jumbo v0, "isIcon"

    .line 570
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 570
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockIcon:Z

    .line 573
    const-string/jumbo v0, "unlockText"

    .line 572
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->unlock_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockString:Ljava/lang/String;

    .line 576
    const-string/jumbo v0, "unlockFontColor"

    .line 575
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 575
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockColor:I

    goto/16 :goto_1

    .line 577
    :cond_3
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_PASSWORD:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    const-string/jumbo v0, "tipsColor"

    .line 578
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 578
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mTipsColor:I

    .line 581
    const-string/jumbo v0, "numberColor"

    .line 580
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 580
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mNumberColor:I

    .line 583
    const-string/jumbo v0, "emergencyColor"

    .line 582
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mEnmergencyColor:I

    goto/16 :goto_1

    .line 584
    :cond_4
    const-string/jumbo v0, "KeyguardUnlockStyle"

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    const-string/jumbo v0, "keyguardUnlockType"

    .line 585
    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, "style":Ljava/lang/String;
    const-string/jumbo v0, "slide"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 588
    invoke-direct {p0, v12}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setThemeSlideTypeValues(Lorg/w3c/dom/Element;)V

    goto/16 :goto_1

    .line 589
    :cond_5
    const-string/jumbo v0, "selector"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 590
    invoke-direct {p0, v12}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setThemeSelectTypeValues(Lorg/w3c/dom/Element;)V

    goto/16 :goto_1

    .line 592
    :cond_6
    sget-object v0, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->DEFAULT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 593
    const-string/jumbo v0, "KeyguardThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no style named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", show default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 596
    .end local v11    # "style":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "KeyguardThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no node named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 601
    .end local v12    # "widgetNode":Lorg/w3c/dom/Element;
    :cond_8
    new-instance v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    sget v2, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    sget v3, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    sget-boolean v4, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 602
    sget v5, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    sget v6, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    sget-boolean v7, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 603
    sget v8, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    sget v9, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    move-object v1, p0

    .line 601
    invoke-direct/range {v0 .. v9}, Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZIIZFI)V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    .line 544
    return-void
.end method

.method private setThemeSelectTypeValues(Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "widgetNode"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v11, 0x1

    .line 759
    const-string/jumbo v7, "KeyguardThemeUtils"

    const-string/jumbo v8, "setThemeSelectTypeValues"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v7, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SELECT:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    iput-object v7, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 761
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 762
    .local v6, "selectNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-nez v7, :cond_1

    .line 763
    :cond_0
    const-string/jumbo v7, "KeyguardThemeUtils"

    const-string/jumbo v8, "selectNodeList = null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 766
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 767
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 769
    .local v5, "selectNode":Lorg/w3c/dom/Node;
    const-string/jumbo v7, "Selector"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 771
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v11, :cond_5

    .line 772
    new-instance v8, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;

    move-object v7, v5

    check-cast v7, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "left"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v7, v5

    .line 773
    check-cast v7, Lorg/w3c/dom/Element;

    const-string/jumbo v10, "bottom"

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 774
    const-string/jumbo v10, "useSystemLockWallpaper"

    .line 773
    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 772
    invoke-direct {v8, p0, v9, v7, v10}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZ)V

    iput-object v8, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSelectType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;

    move-object v7, v5

    .line 776
    check-cast v7, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "diameter"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOutRingDiameter:I

    .line 777
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 779
    .local v2, "itemList":Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-nez v7, :cond_3

    .line 780
    :cond_2
    const-string/jumbo v7, "KeyguardThemeUtils"

    const-string/jumbo v8, "itemList = null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return-void

    .line 783
    :cond_3
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 784
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 785
    .local v3, "itemNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v11, :cond_4

    .line 786
    const-string/jumbo v7, "Item"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 787
    const-string/jumbo v7, "KeyguardThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSelectType,  k = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;

    .line 789
    check-cast v3, Lorg/w3c/dom/Element;

    .line 790
    .end local v3    # "itemNode":Lorg/w3c/dom/Node;
    const-string/jumbo v7, "target"

    .line 789
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 788
    invoke-direct {v1, p0, v7}, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;)V

    .line 792
    .local v1, "item":Lcom/meizu/keyguard/KeyguardThemeUtils$Item;
    iget-object v7, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSelectType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;

    invoke-virtual {v7, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->addItem(Lcom/meizu/keyguard/KeyguardThemeUtils$Item;)V

    .line 793
    const-string/jumbo v7, "KeyguardThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSelectType,  k = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", target = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;->mTarget:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v1    # "item":Lcom/meizu/keyguard/KeyguardThemeUtils$Item;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 766
    .end local v2    # "itemList":Lorg/w3c/dom/NodeList;
    .end local v4    # "k":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 800
    .end local v5    # "selectNode":Lorg/w3c/dom/Node;
    :cond_6
    const-string/jumbo v7, "KeyguardThemeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSelectType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSelectType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;

    invoke-virtual {v9}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void
.end method

.method private setThemeSlideTypeValues(Lorg/w3c/dom/Element;)V
    .locals 17
    .param p1, "widgetNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 646
    const-string/jumbo v2, "KeyguardThemeUtils"

    const-string/jumbo v3, "setThemeSlideTypeValues"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v2, Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;->SLIDE:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mKeyguardUnlockType:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_UNLOCK_STYLE;

    .line 648
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 649
    .local v14, "slideNodeList":Lorg/w3c/dom/NodeList;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_1

    .line 650
    :cond_0
    const-string/jumbo v2, "KeyguardThemeUtils"

    const-string/jumbo v3, "slideNodeList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 653
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v7, v2, :cond_b

    .line 654
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 655
    .local v13, "slideNode":Lorg/w3c/dom/Node;
    if-eqz v13, :cond_a

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 656
    const-string/jumbo v2, "Slide"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 659
    new-instance v3, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

    move-object v2, v13

    .line 660
    check-cast v2, Lorg/w3c/dom/Element;

    .line 661
    const-string/jumbo v4, "orientation"

    .line 660
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/keyguard/KeyguardThemeUtils;->parseOrientationStr(Ljava/lang/String;)Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    move-result-object v2

    .line 663
    const-string/jumbo v4, "useSystemLockWallpaper"

    .line 662
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 665
    const-string/jumbo v5, "moveAsAWhole"

    .line 664
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 659
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;ZZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

    .line 668
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 670
    .local v16, "trackList":Lorg/w3c/dom/NodeList;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_3

    .line 671
    :cond_2
    const-string/jumbo v2, "KeyguardThemeUtils"

    const-string/jumbo v3, "trackList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void

    .line 674
    :cond_3
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v8, v2, :cond_a

    .line 675
    const-string/jumbo v2, "KeyguardThemeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setThemeSlideTypeValues, k = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 677
    .local v15, "traceNode":Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 678
    const-string/jumbo v2, "Track"

    .line 679
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 682
    new-instance v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;

    move-object v2, v15

    .line 683
    check-cast v2, Lorg/w3c/dom/Element;

    .line 684
    const-string/jumbo v3, "target"

    .line 683
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v15

    .line 685
    check-cast v2, Lorg/w3c/dom/Element;

    .line 686
    const-string/jumbo v4, "x"

    .line 685
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, v15

    .line 687
    check-cast v2, Lorg/w3c/dom/Element;

    .line 688
    const-string/jumbo v5, "y"

    .line 687
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, v15

    .line 689
    check-cast v2, Lorg/w3c/dom/Element;

    .line 690
    const-string/jumbo v6, "triggerDistance"

    .line 689
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v2, p0

    .line 682
    invoke-direct/range {v1 .. v6}, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;-><init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;III)V

    .local v1, "track":Lcom/meizu/keyguard/KeyguardThemeUtils$Track;
    move-object v2, v15

    .line 693
    check-cast v2, Lorg/w3c/dom/Element;

    .line 694
    const-string/jumbo v3, "w"

    .line 693
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v2, v15

    .line 695
    check-cast v2, Lorg/w3c/dom/Element;

    .line 696
    const-string/jumbo v4, "h"

    .line 695
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 692
    invoke-virtual {v1, v3, v2}, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->setSize(II)V

    .line 699
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 701
    .local v11, "pointList":Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_5

    .line 702
    :cond_4
    const-string/jumbo v2, "KeyguardThemeUtils"

    const-string/jumbo v3, "pointList is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 705
    :cond_5
    const/4 v9, 0x0

    .local v9, "l":I
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v9, v2, :cond_8

    .line 707
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 710
    .local v12, "pointNode":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 711
    const-string/jumbo v2, "StartPoint"

    .line 712
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v10, v12

    .line 714
    check-cast v10, Lorg/w3c/dom/Element;

    .line 717
    .local v10, "pointElement":Lorg/w3c/dom/Element;
    const-string/jumbo v2, "x"

    .line 716
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartX:I

    .line 720
    const-string/jumbo v2, "y"

    .line 719
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartY:I

    .line 723
    const-string/jumbo v2, "w"

    .line 722
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartWidth:I

    .line 726
    const-string/jumbo v2, "h"

    .line 725
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartHeight:I

    .line 706
    .end local v10    # "pointElement":Lorg/w3c/dom/Element;
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 727
    :cond_7
    const-string/jumbo v2, "EndPoint"

    .line 728
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v10, v12

    .line 730
    check-cast v10, Lorg/w3c/dom/Element;

    .line 733
    .restart local v10    # "pointElement":Lorg/w3c/dom/Element;
    const-string/jumbo v2, "x"

    .line 732
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndX:I

    .line 736
    const-string/jumbo v2, "y"

    .line 735
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndY:I

    .line 739
    const-string/jumbo v2, "w"

    .line 738
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndWidth:I

    .line 742
    const-string/jumbo v2, "h"

    .line 741
    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndHeight:I

    goto :goto_3

    .line 746
    .end local v10    # "pointElement":Lorg/w3c/dom/Element;
    .end local v12    # "pointNode":Lorg/w3c/dom/Node;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

    invoke-virtual {v2, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->addTracks(Lcom/meizu/keyguard/KeyguardThemeUtils$Track;)V

    .line 674
    .end local v1    # "track":Lcom/meizu/keyguard/KeyguardThemeUtils$Track;
    .end local v9    # "l":I
    .end local v11    # "pointList":Lorg/w3c/dom/NodeList;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 653
    .end local v8    # "k":I
    .end local v15    # "traceNode":Lorg/w3c/dom/Node;
    .end local v16    # "trackList":Lorg/w3c/dom/NodeList;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 753
    .end local v13    # "slideNode":Lorg/w3c/dom/Node;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

    if-eqz v2, :cond_c

    .line 754
    const-string/jumbo v2, "KeyguardThemeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSlideType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideType:Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;

    invoke-virtual {v4}, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_c
    return-void
.end method


# virtual methods
.method public getEmergencyColor()I
    .locals 1

    .prologue
    .line 409
    sget v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mEnmergencyColor:I

    return v0
.end method

.method public getIsUnlockIcon()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockIcon:Z

    return v0
.end method

.method public getRecents()Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mRecents:Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    return-object v0
.end method

.method public getSlideDetails()Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlide:Lcom/meizu/keyguard/KeyguardThemeUtils$Slide;

    return-object v0
.end method

.method public getTipsColor()I
    .locals 1

    .prologue
    .line 403
    sget v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mTipsColor:I

    return v0
.end method

.method public getUnlockColor()I
    .locals 1

    .prologue
    .line 396
    sget v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockColor:I

    return v0
.end method

.method public getUnlockString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUnlockString:Ljava/lang/String;

    return-object v0
.end method

.method public openDesktopMask()Z
    .locals 3

    .prologue
    .line 862
    const-string/jumbo v0, "KeyguardThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usedSystemUITheme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mOpenDesktopMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenLockMask:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenDesktopMask:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openLockMask()Z
    .locals 3

    .prologue
    .line 858
    const-string/jumbo v0, "KeyguardThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usedSystemUITheme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mOpenLockMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenLockMask:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenLockMask:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLocalValues()V
    .locals 18

    .prologue
    .line 470
    const-string/jumbo v15, "KeyguardThemeUtils"

    const-string/jumbo v16, "setLocalValues"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v15, "com.android.systemui"

    .line 471
    invoke-static {v15}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getConfigXmlByPackageName(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 474
    .local v8, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 479
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    if-nez v8, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->LOCAL_DEBUG:Z

    if-eqz v15, :cond_0

    .line 480
    const-string/jumbo v15, "KeyguardThemeUtils"

    const-string/jumbo v16, "setLocalValues InputStream == null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 482
    const-string/jumbo v16, "/config.xml"

    .line 481
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object v8, v9

    .line 485
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :cond_0
    if-nez v8, :cond_2

    .line 486
    const-string/jumbo v15, "KeyguardThemeUtils"

    .line 487
    const-string/jumbo v16, "setLocalValues InputStream ==null again"

    .line 486
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    if-eqz v8, :cond_1

    .line 519
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v4

    .line 522
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 491
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 492
    .local v3, "document":Lorg/w3c/dom/Document;
    if-eqz v3, :cond_8

    .line 493
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    .line 494
    .local v12, "root":Lorg/w3c/dom/Element;
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 495
    .local v14, "themes":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v7, v15, :cond_8

    .line 496
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 497
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 498
    .local v10, "node":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 499
    .local v11, "nodeList":Lorg/w3c/dom/NodeList;
    move-object v0, v10

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v13, v0

    .line 500
    .local v13, "themeNode":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_SLIDE:Ljava/lang/Object;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 501
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setSlideValues(Lorg/w3c/dom/NodeList;)V

    .line 502
    const-string/jumbo v15, "useSystemAutoColor"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUseSystemAutoColor:Ljava/lang/Boolean;

    .line 503
    const-string/jumbo v15, "openLockMask"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenLockMask:Ljava/lang/Boolean;

    .line 504
    const-string/jumbo v15, "openDesktopMask"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mOpenDesktopMask:Ljava/lang/Boolean;

    .line 495
    .end local v10    # "node":Lorg/w3c/dom/Node;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "themeNode":Lorg/w3c/dom/Element;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 505
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    .restart local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "themeNode":Lorg/w3c/dom/Element;
    :cond_4
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_SECURITY:Ljava/lang/Object;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 506
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/keyguard/KeyguardThemeUtils;->setSecurityValues(Lorg/w3c/dom/NodeList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 514
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/Node;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "root":Lorg/w3c/dom/Element;
    .end local v13    # "themeNode":Lorg/w3c/dom/Element;
    .end local v14    # "themes":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v5

    .line 515
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    if-eqz v8, :cond_5

    .line 519
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 469
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void

    .line 507
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    .restart local v7    # "i":I
    .restart local v10    # "node":Lorg/w3c/dom/Node;
    .restart local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v12    # "root":Lorg/w3c/dom/Element;
    .restart local v13    # "themeNode":Lorg/w3c/dom/Element;
    .restart local v14    # "themes":Lorg/w3c/dom/NodeList;
    :cond_6
    :try_start_5
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/meizu/keyguard/KeyguardThemeUtils;->XMLTAG_THEME_RECENTS:Ljava/lang/Object;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mRecents:Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    move-object/from16 v16, v0

    const-string/jumbo v15, "recents_clear_all_circle_color_light"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    iput v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllFrontColor:I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mRecents:Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;

    move-object/from16 v16, v0

    const-string/jumbo v15, "recents_clear_all_circle_color_dark"

    invoke-interface {v13, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const v17, 0x33ffffff

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getValueByAttr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    iput v15, v0, Lcom/meizu/keyguard/KeyguardThemeUtils$Recents;->mClearAllBehindColor:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 516
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/Node;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "root":Lorg/w3c/dom/Element;
    .end local v13    # "themeNode":Lorg/w3c/dom/Element;
    .end local v14    # "themes":Lorg/w3c/dom/NodeList;
    :catchall_0
    move-exception v15

    .line 518
    if-eqz v8, :cond_7

    .line 519
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 516
    :cond_7
    :goto_4
    throw v15

    .line 518
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    :cond_8
    if-eqz v8, :cond_5

    .line 519
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 521
    :catch_2
    move-exception v4

    .line 522
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 521
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 522
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 521
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 522
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSlideTimeLeft = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSlideTimeTop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeTop:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    const-string/jumbo v1, ", mSlideTimeHorizontal = "

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
    sget-boolean v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideTimeHorizontal:Z

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
    const-string/jumbo v1, ", mSlideDateLeft="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 530
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateLeft:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 531
    const-string/jumbo v1, ", mSlideDateTop="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 531
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateTop:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    const-string/jumbo v1, ", mSlideDateHorizontal="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    sget-boolean v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateHorizontal:Z

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string/jumbo v1, ", mSlideDateSize="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateSize:F

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string/jumbo v1, ", mSlideDateColor="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSlideDateColor:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", mSecurityTimeLeft="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeLeft:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string/jumbo v1, ", mSecurityTimeTop="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeTop:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    const-string/jumbo v1, ", mSecurityTimeHorizontal="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    sget-boolean v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityTimeHorizontal:Z

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    const-string/jumbo v1, ", mSecurityDateLeft="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateLeft:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    const-string/jumbo v1, ", mSecurityDateTop="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateTop:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v1, ", mSecurityDateSize="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateSize:F

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    const-string/jumbo v1, ", mSecurityDateHorizontal="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    sget-boolean v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateHorizontal:Z

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string/jumbo v1, ", mSecurityDateColor="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    sget v1, Lcom/meizu/keyguard/KeyguardThemeUtils;->mSecurityDateColor:I

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSystemUIAutoColor()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mUseSystemAutoColor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public usedSystemUITheme()Z
    .locals 2

    .prologue
    .line 851
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.meizu.customizecenter/theme/com.android.systemui"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
