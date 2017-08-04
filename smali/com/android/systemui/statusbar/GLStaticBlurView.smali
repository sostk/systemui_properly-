.class public Lcom/android/systemui/statusbar/GLStaticBlurView;
.super Landroid/view/View;
.source "GLStaticBlurView.java"


# static fields
.field private static final STATIC_BLUR:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

.field private mForceStatic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "persist.perf.wm_static_blur"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/GLStaticBlurView;->STATIC_BLUR:Z

    .line 20
    const-string/jumbo v0, "GLStaticBlurView"

    sput-object v0, Lcom/android/systemui/statusbar/GLStaticBlurView;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/GLStaticBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method private blurUnderMeRect(ZZZ)V
    .locals 3
    .param p1, "blurSwitch"    # Z
    .param p2, "forceStatic"    # Z
    .param p3, "currentLayer"    # Z

    .prologue
    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/GLStaticBlurView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " blurUnderMeRect blurSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " forceStatic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentLayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/GLStaticBlurView;->mForceStatic:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    .line 57
    if-eqz p3, :cond_3

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen()V

    .line 62
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    const v1, 0x3ed1da16

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setIntensity(F)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->invalidate()V

    goto :goto_0

    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getStatusbarLayer()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->captureScreen(II)V

    goto :goto_1
.end method

.method private getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/GLStaticBlurView;->mBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    invoke-direct {v0}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GLStaticBlurView;->mBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/GLStaticBlurView;->mBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getStatusbarLayer()I
    .locals 3

    .prologue
    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    const/16 v0, 0xf

    .line 137
    .local v0, "layerLw":I
    :goto_0
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit16 v1, v1, 0x3e8

    return v1

    .line 136
    .end local v0    # "layerLw":I
    :cond_0
    const/16 v0, 0x10

    .restart local v0    # "layerLw":I
    goto :goto_0
.end method


# virtual methods
.method public blurUnderMeRectCurrentLayer(ZZ)V
    .locals 1
    .param p1, "blurSwitch"    # Z
    .param p2, "forceStatic"    # Z

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->blurUnderMeRect(ZZZ)V

    .line 44
    return-void
.end method

.method public blurUnderMeRectLowerLayer(ZZ)V
    .locals 1
    .param p1, "blurSwitch"    # Z
    .param p2, "forceStatic"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->blurUnderMeRect(ZZZ)V

    .line 40
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setBlurAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->setBlurAlpha(F)V

    .line 86
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setAlpha(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->invalidate()V

    goto :goto_0
.end method

.method public setBlurIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->setBlurIntensity(F)V

    .line 106
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setIntensity(F)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->invalidate()V

    goto :goto_0
.end method

.method public setBlurLevel(F)V
    .locals 2
    .param p1, "level"    # F

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->setBlurLevel(F)V

    .line 76
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setLevel(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->invalidate()V

    goto :goto_0
.end method

.method public setBlurRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->setBlurRect(Landroid/graphics/Rect;)V

    .line 96
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->getBlurDrawable()Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurWindowDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->invalidate()V

    goto :goto_0
.end method

.method public setStaticBlurMode(Z)V
    .locals 1
    .param p1, "staticBlurMode"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->setStaticBlurMode(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public useStaticBlurDrawable()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/systemui/statusbar/GLStaticBlurView;->STATIC_BLUR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/GLStaticBlurView;->mForceStatic:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
