.class Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;
.super Landroid/widget/FrameLayout;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/ScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWindowView"
.end annotation


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCancel:Z

.field final synthetic this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method private inflateView(Z)V
    .locals 7
    .param p1, "isLandscape"    # Z

    .prologue
    const v6, 0x7f0f0219

    const/4 v5, 0x3

    .line 203
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 204
    const v2, 0x7f0400ac

    .line 205
    :goto_0
    const/4 v4, 0x0

    .line 203
    invoke-static {v3, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    .line 207
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 209
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 211
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0215

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 213
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f020f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "buttons":Landroid/view/View;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/flyme/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 216
    invoke-direct {p0, v1}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->swapChildrenIfRtlAndVertical(Landroid/view/View;)V

    .line 221
    :goto_1
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0218

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 222
    iget-object v3, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    .line 221
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-boolean v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 225
    iget-object v3, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    .line 224
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :goto_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0217

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    const v3, 0x7f09029c

    .line 231
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    invoke-static {v2}, Lcom/flyme/systemui/recents/ScreenPinningRequest;->-get0(Lcom/flyme/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 235
    .local v0, "backBgVisibility":I
    :goto_3
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0212

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0211

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v3, p1}, Lcom/flyme/systemui/recents/ScreenPinningRequest;->getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void

    .line 204
    .end local v0    # "backBgVisibility":I
    .end local v1    # "buttons":Landroid/view/View;
    :cond_0
    const v2, 0x7f0400a9

    goto/16 :goto_0

    .line 218
    .restart local v1    # "buttons":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 228
    const/4 v3, 0x4

    .line 227
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 234
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "backBgVisibility":I
    goto :goto_3
.end method

.method private isLandscapePhone(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 195
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 196
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    .line 195
    :cond_0
    return v1
.end method

.method private swapChildrenIfRtlAndVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 242
    iget-object v4, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 244
    return-void

    :cond_0
    move-object v3, p1

    .line 246
    check-cast v3, Landroid/widget/LinearLayout;

    .line 247
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 248
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 251
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 254
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 255
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 241
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42c00000    # 96.0f

    const/4 v7, 0x0

    .line 150
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/flyme/systemui/recents/ScreenPinningRequest;

    invoke-static {v5}, Lcom/flyme/systemui/recents/ScreenPinningRequest;->-get1(Lcom/flyme/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .local v1, "density":F
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z

    move-result v3

    .line 155
    .local v3, "isLandscape":Z
    invoke-direct {p0, v3}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(Z)V

    .line 156
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    .line 157
    const v6, 0x7f0a00f9

    .line 156
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 158
    .local v0, "bgColor":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 160
    if-eqz v3, :cond_0

    .line 161
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float v6, v8, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 165
    :goto_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 166
    const/high16 v6, 0x3f800000    # 1.0f

    .line 165
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 169
    const-wide/16 v6, 0x12c

    .line 165
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 170
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 165
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 173
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 174
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView$3;

    invoke-direct {v6, p0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView$3;-><init>(Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 182
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 187
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 163
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float v6, v8, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v5, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->removeAllViews()V

    .line 267
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(Z)V

    .line 265
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method
