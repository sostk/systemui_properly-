.class public Lcom/meizu/common/util/SearchAnimHelper;
.super Ljava/lang/Object;
.source "SearchAnimHelper.java"


# instance fields
.field private final ICON_SCALE:F

.field private final SEARCH_BAR_DURATION:J

.field private final SEARCH_ICON_COLLAPSE_DURATION:J

.field private final SEARCH_ICON_EXPAND_DURATION:J

.field private interpolator1:Landroid/animation/TimeInterpolator;

.field private interpolator2:Landroid/animation/TimeInterpolator;

.field private mContainerView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field public mExitAnimSet:Landroid/animation/AnimatorSet;

.field private mHintText:Ljava/lang/String;

.field private mHomeUpView:Landroid/view/View;

.field public mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSearchBar:Landroid/view/View;

.field private mSearchIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerView"    # Landroid/view/View;
    .param p3, "homeViewId"    # I
    .param p4, "onAnimEndListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x100

    .line 24
    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_BAR_DURATION:J

    const-wide/16 v0, 0x120

    .line 25
    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_ICON_EXPAND_DURATION:J

    const-wide/16 v0, 0xd0

    .line 26
    iput-wide v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->SEARCH_ICON_COLLAPSE_DURATION:J

    const v0, 0x3faf5c29    # 1.37f

    .line 32
    iput v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->ICON_SCALE:F

    .line 48
    iput-object p4, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    .line 50
    if-nez p2, :cond_0

    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->initInterpolator()V

    .line 57
    return-void

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mContainerView:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->mc_search_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/util/SearchAnimHelper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/SearchAnimHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/util/SearchAnimHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/SearchAnimHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHintText:Ljava/lang/String;

    return-object v0
.end method

.method private initInterpolator()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    .line 65
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private isAnimatedViewExits()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setDrawDuringWindowAnimation(Landroid/view/View;Z)Z
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "draw"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "getViewRootImpl"

    const/4 v6, 0x0

    .line 190
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "getViewRootImpl":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 191
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 192
    .local v3, "viewRootImp":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setDrawDuringWindowsAnimating"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "setDraw":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    .line 193
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return v10

    .end local v1    # "getViewRootImpl":Ljava/lang/reflect/Method;
    .end local v2    # "setDraw":Ljava/lang/reflect/Method;
    .end local v3    # "viewRootImp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    return v9
.end method


# virtual methods
.method public startSearchExitAnim(FF)V
    .locals 12
    .param p1, "searchIconTransXFrom"    # F
    .param p2, "searchIconTransXTo"    # F

    .prologue
    .line 132
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_1

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->isAnimatedViewExits()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 139
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_3

    .line 172
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 174
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 175
    return-void

    .line 132
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    return-void

    .line 136
    :cond_2
    return-void

    .line 142
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 143
    .local v6, "searchBarAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x100

    .line 144
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 147
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p1, v8, v9

    const/4 v9, 0x1

    aput p2, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 148
    .local v3, "iconTrans":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    const v10, 0x3faf5c29    # 1.37f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 149
    .local v4, "pvhIconScaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    const v10, 0x3faf5c29    # 1.37f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 150
    .local v5, "pvhIconScaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 151
    .local v2, "iconAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xd0

    .line 152
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 155
    .local v1, "iconAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xd0

    .line 156
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    if-nez v7, :cond_4

    .line 162
    :goto_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    .line 163
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    if-nez v7, :cond_5

    .line 169
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mOnAnimEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 164
    :cond_5
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 165
    .local v0, "homeUpAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x100

    .line 166
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method public startSearchExpandAnim(FF)V
    .locals 12
    .param p1, "searchIconTransXFrom"    # F
    .param p2, "searchIconTransXTo"    # F

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/meizu/common/util/SearchAnimHelper;->isAnimatedViewExits()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 82
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 83
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHintText:Ljava/lang/String;

    .line 84
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 86
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p1, v8, v9

    const/4 v9, 0x1

    aput p2, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 87
    .local v5, "pvhIconTrans":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const v10, 0x3faf5c29    # 1.37f

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 88
    .local v3, "pvhIconScaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const v10, 0x3faf5c29    # 1.37f

    aput v10, v8, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 89
    .local v4, "pvhIconScaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 90
    .local v2, "iconAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x120

    .line 91
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchIcon:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 94
    .local v1, "iconAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x120

    .line 95
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    new-instance v7, Lcom/meizu/common/util/SearchAnimHelper$1;

    invoke-direct {v7, p0}, Lcom/meizu/common/util/SearchAnimHelper$1;-><init>(Lcom/meizu/common/util/SearchAnimHelper;)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mSearchBar:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 108
    .local v6, "searchBarAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x100

    .line 109
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 119
    :goto_0
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 121
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 122
    return-void

    .line 78
    .end local v1    # "iconAlphaAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "iconAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "pvhIconScaleX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhIconScaleY":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "pvhIconTrans":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "searchBarAlphaAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 112
    .restart local v1    # "iconAlphaAnim":Landroid/animation/ObjectAnimator;
    .restart local v2    # "iconAnim":Landroid/animation/ObjectAnimator;
    .restart local v3    # "pvhIconScaleX":Landroid/animation/PropertyValuesHolder;
    .restart local v4    # "pvhIconScaleY":Landroid/animation/PropertyValuesHolder;
    .restart local v5    # "pvhIconTrans":Landroid/animation/PropertyValuesHolder;
    .restart local v6    # "searchBarAlphaAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->mHomeUpView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    .local v0, "homeUpAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/meizu/common/util/SearchAnimHelper;->interpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x100

    .line 114
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
