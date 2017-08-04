.class public Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
.super Ljava/lang/Object;
.source "ExpandableListPreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;
    }
.end annotation


# static fields
.field public static final COLLAPSE:I = 0x1

.field public static final EXPAND:I


# instance fields
.field private mEndAlpha:F

.field private mEndBottomMargin:I

.field private mEndHeight:I

.field private mIsAnimating:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMarginTop:I

.field private mMillisTime:J

.field private mRonateView:Landroid/view/View;

.field private mStartAlpha:F

.field private mStartBottomMargin:I

.field private mSummaryView:Landroid/view/View;

.field private mTarget:Landroid/view/View;

.field private mType:I

.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    .line 298
    iput-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    .line 302
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mRonateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    return p1
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 6

    .prologue
    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x15

    .line 455
    if-ge v0, v1, :cond_0

    .line 458
    new-instance v1, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Lcom/meizu/common/preference/ExpandableListPreference$1;)V

    return-object v1

    .line 456
    :cond_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v1
.end method


# virtual methods
.method public animateHeightPrt()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const-wide v12, 0x3fd999999999999aL    # 0.4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eqz v4, :cond_0

    .line 331
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eq v4, v9, :cond_1

    .line 337
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 338
    .local v1, "aniSet":Landroid/animation/AnimatorSet;
    new-array v4, v10, [F

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    aput v5, v4, v8

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    aput v5, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 339
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    mul-double/2addr v4, v12

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eq v4, v9, :cond_2

    .line 343
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;

    invoke-direct {v4, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    new-array v4, v10, [F

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    aput v5, v4, v8

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    aput v5, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 380
    .local v2, "listAlphaAnimator":Landroid/animation/ValueAnimator;
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 381
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eqz v4, :cond_3

    .line 384
    :goto_2
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$3;

    invoke-direct {v4, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$3;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 392
    new-array v4, v10, [I

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    aput v5, v4, v8

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    aput v5, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 394
    .local v3, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 395
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;

    invoke-direct {v4, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;

    invoke-direct {v4, p0, v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, 0x3

    .line 445
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v2, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 446
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 447
    return-void

    .line 327
    .end local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "aniSet":Landroid/animation/AnimatorSet;
    .end local v2    # "listAlphaAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "valueAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    .line 328
    iput v8, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    .line 329
    iput v6, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 330
    iput v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    goto/16 :goto_0

    .line 332
    :cond_1
    iput v8, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    .line 333
    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 334
    iput v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    .line 335
    iput v6, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    goto/16 :goto_0

    .line 341
    .restart local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .restart local v1    # "aniSet":Landroid/animation/AnimatorSet;
    :cond_2
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_1

    .line 382
    .restart local v2    # "listAlphaAnimator":Landroid/animation/ValueAnimator;
    :cond_3
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    mul-double/2addr v4, v12

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_2
.end method

.method public iSAnimating()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    return v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "expandItemView"    # Landroid/view/View;
    .param p2, "ronateView"    # Landroid/view/View;
    .param p3, "summaryView"    # Landroid/view/View;
    .param p4, "type"    # I
    .param p5, "millisTime"    # J

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 307
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    .line 308
    iput-object p3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    .line 309
    iput-object p2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mRonateView:Landroid/view/View;

    .line 310
    iput p4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    .line 311
    iput-wide p5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    .line 312
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    .line 314
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 323
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 320
    goto :goto_1

    :cond_2
    move v2, v1

    .line 322
    goto :goto_2
.end method

.method public setMarginTop(I)V
    .locals 0
    .param p1, "marginTop"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    .line 451
    return-void
.end method
