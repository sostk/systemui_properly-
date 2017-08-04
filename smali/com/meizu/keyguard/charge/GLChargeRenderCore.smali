.class public Lcom/meizu/keyguard/charge/GLChargeRenderCore;
.super Ljava/lang/Object;
.source "GLChargeRenderCore.java"

# interfaces
.implements Lcom/meizu/keyguard/charge/ChargeViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;
    }
.end annotation


# instance fields
.field private mCharged:Z

.field private mCharging:Z

.field private final mChargingView:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mFactor:F

.field private mFastCharge:Z

.field private mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

.field private mGlslShaderString:Ljava/lang/String;

.field private mHighPerfProp:F

.field private mPlugged:Z

.field private mRenderAnimator:Landroid/animation/ValueAnimator;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)F
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFactor:F

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFastCharge:Z

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)F
    .locals 1

    iget v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mHighPerfProp:F

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFastCharge:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGlslShaderString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Z)Ljava/lang/String;
    .locals 1
    .param p1, "fastCharge"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->loadFragmentShader(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chargingView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mCharging:Z

    .line 40
    iput-boolean v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mCharged:Z

    .line 41
    iput-boolean v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mPlugged:Z

    .line 116
    new-instance v0, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/meizu/keyguard/charge/GLChargeRenderCore$1;-><init>(Lcom/meizu/keyguard/charge/GLChargeRenderCore;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    .line 53
    invoke-static {p1}, Lcom/meizu/common/renderer/effect/GLRenderer;->initialize(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mz_fast_charge"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFastCharge:Z

    .line 56
    iget-boolean v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFastCharge:Z

    invoke-direct {p0, v0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->loadFragmentShader(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGlslShaderString:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    iget-object v3, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGlslShaderString:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    .line 58
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    const-string/jumbo v3, "mz_fast_charge"

    .line 58
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    .line 58
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 60
    const-string/jumbo v0, "persist.sys.lock.charge"

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mHighPerfProp:F

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private doRender()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 128
    const-string/jumbo v0, "GLChargeRenderCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHighPerfProp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mHighPerfProp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    .line 131
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;

    invoke-direct {v1, p0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore$2;-><init>(Lcom/meizu/keyguard/charge/GLChargeRenderCore;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x55730

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    return-void
.end method

.method private getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 164
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 165
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 167
    .local v2, "i":I
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 168
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 173
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, ""

    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method private loadFragmentShader(Z)Ljava/lang/String;
    .locals 2
    .param p1, "fastCharge"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$raw;->glsl_round_makeup_point:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stopRender()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mRenderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->recycle()V

    .line 100
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->setVisible(ZZ)V

    .line 96
    return-void
.end method

.method public getChargingViewVisibility()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 66
    const-string/jumbo v0, "GLChargeRenderCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisible visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean p1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mVisible:Z

    .line 68
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    int-to-float v0, v0

    .line 70
    const/high16 v1, 0x42c80000    # 100.0f

    .line 69
    div-float/2addr v0, v1

    .line 70
    const/high16 v1, 0x43460000    # 198.0f

    .line 69
    mul-float/2addr v0, v1

    .line 70
    const/high16 v1, 0x42200000    # 40.0f

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFactor:F

    .line 71
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGlslShaderString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    .line 72
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mGLSLDrawable:Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/drawable/GLSLDrawable;

    iget v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mHighPerfProp:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLSLDrawable;->setParameter2(F)V

    .line 77
    invoke-direct {p0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->doRender()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->stopRender()V

    .line 80
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public updateBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;I)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p2, "screenState"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mPlugged:Z

    .line 90
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mCharged:Z

    .line 91
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43460000    # 198.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mFactor:F

    .line 92
    iget-boolean v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mPlugged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mCharged:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/meizu/keyguard/charge/GLChargeRenderCore;->mCharging:Z

    .line 88
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
