.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;
.super Ljava/lang/Object;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AnimCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxAnimHelper"
.end annotation


# instance fields
.field private DEBUG:Z

.field private mAnimator1:Landroid/animation/ObjectAnimator;

.field private mAnimator2:Landroid/animation/ObjectAnimator;

.field private mAnimator3:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasInit:Z

.field private mInterpolator1:Landroid/animation/TimeInterpolator;

.field private mInterpolator2:Landroid/animation/TimeInterpolator;

.field private mInterpolator3:Landroid/animation/TimeInterpolator;

.field private mInterpolator4:Landroid/animation/TimeInterpolator;

.field private mIsAnimation:Z

.field private mTarget:Lcom/meizu/common/widget/AnimCheckBox;

.field private mTargetActivatedState:Z

.field private mTargetChecekedState:Z


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/AnimCheckBox;)V
    .locals 2
    .param p1, "checkBox"    # Lcom/meizu/common/widget/AnimCheckBox;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    .line 141
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 142
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 148
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 149
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V

    .line 150
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private init()V
    .locals 11

    .prologue
    const v10, 0x3dcccccd    # 0.1f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 154
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v2, "sdk":I
    const/16 v3, 0x15

    .line 155
    if-ge v2, v3, :cond_0

    .line 161
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    :goto_0
    const-string/jumbo v3, "scaleY"

    const/4 v4, 0x2

    .line 164
    new-array v4, v4, [F

    aput v6, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 165
    .local v0, "scaleYPVH":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v3, "scaleY"

    const/4 v4, 0x2

    .line 183
    new-array v4, v4, [F

    aput v9, v4, v7

    aput v6, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 184
    .local v1, "scaleYPVH2":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    .line 185
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x2

    .line 187
    new-array v3, v3, [F

    aput v9, v3, v7

    aput v6, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 213
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 214
    return-void

    .line 156
    .end local v0    # "scaleYPVH":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "scaleYPVH2":Landroid/animation/PropertyValuesHolder;
    :cond_0
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d50e560    # 0.051f

    const v5, 0x3c449ba6    # 0.012f

    invoke-direct {v3, v4, v5, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    .line 157
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d50e560    # 0.051f

    const v5, 0x3c449ba6    # 0.012f

    invoke-direct {v3, v4, v5, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    .line 158
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3d762b6b    # 0.0601f

    invoke-direct {v3, v4, v5, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    .line 159
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v9, v9, v10, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    goto/16 :goto_0
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 11
    .param p1, "activated"    # Z

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    .line 259
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-nez v3, :cond_1

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 261
    return-void

    .line 259
    :cond_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-eqz v3, :cond_0

    .line 263
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-nez v3, :cond_3

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v3

    if-ne p1, v3, :cond_4

    .line 294
    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v3, "xx"

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActivated activated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mTargetChecekedState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :cond_4
    if-eqz p1, :cond_7

    .line 273
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    .line 286
    :cond_6
    if-nez p1, :cond_2

    .line 287
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 288
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 289
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    goto/16 :goto_1

    .line 270
    :cond_7
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 273
    :cond_8
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eqz v3, :cond_6

    .line 274
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 275
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 276
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v6

    aput v10, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 278
    .local v1, "scaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v6

    aput v10, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 280
    .local v2, "scaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x28

    .line 282
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const-wide/16 v4, 0x1dc

    const/4 v3, 0x0

    .line 217
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-nez v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 219
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 220
    return-void

    .line 217
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 222
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-nez v0, :cond_2

    .line 227
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-ne p1, v0, :cond_3

    .line 255
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "xx"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChecked checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTargetChecekedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_3
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 229
    if-nez p1, :cond_5

    .line 243
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_1

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    goto/16 :goto_1

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 232
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 243
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1
.end method

.method public setIsAnimation(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 298
    return-void
.end method
