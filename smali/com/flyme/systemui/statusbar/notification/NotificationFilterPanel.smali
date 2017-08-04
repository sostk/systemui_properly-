.class public Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;
.super Landroid/widget/FrameLayout;
.source "NotificationFilterPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;,
        Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;,
        Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;
    }
.end annotation


# instance fields
.field private mAlphaAnimDuration:J

.field private mAnimIn:Landroid/animation/AnimatorSet;

.field private mAnimOut:Landroid/animation/AnimatorSet;

.field private mAnimationInEndAction:Ljava/lang/Runnable;

.field private mAnimationOutEndAction:Ljava/lang/Runnable;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissButton:Landroid/widget/TextView;

.field private mFilterHeader:Landroid/view/View;

.field private mFilterHeaderMarginTop:I

.field private mFilterInterceptedTips:Landroid/widget/TextView;

.field private mFilterSettings:Landroid/widget/TextView;

.field private mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStackTranslationY:I


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelOut()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f10001c

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    const v1, 0x7f0b02db

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationInEndAction:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimationOutEndAction:Ljava/lang/Runnable;

    .line 99
    return-void
.end method

.method private createInAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 212
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 214
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    const-string/jumbo v7, "alpha"

    new-array v8, v14, [F

    .line 215
    aput v10, v8, v11

    aput v12, v8, v13

    .line 214
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    .local v1, "headerAlphaIn":Landroid/animation/Animator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v6, v10, v7, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 217
    .local v2, "interpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 219
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v14, [F

    .line 220
    aput v10, v8, v11

    aput v12, v8, v13

    .line 219
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 221
    .local v4, "stackAlphaIn":Landroid/animation/Animator;
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 223
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    .line 224
    const-string/jumbo v7, "imageAlpha"

    const/16 v8, 0xff

    .line 223
    filled-new-array {v11, v8}, [I

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 225
    .local v0, "dismissButtonAlphaIn":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 227
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 228
    const-string/jumbo v7, "translationY"

    .line 227
    new-array v8, v14, [F

    .line 228
    iget v9, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v11

    aput v10, v8, v13

    .line 227
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 229
    .local v5, "stackTranslationIn":Landroid/animation/Animator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/PathInterpolator;
    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v6, v10, v7, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 230
    .restart local v2    # "interpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v5, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    const-wide/16 v6, 0x140

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 232
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v11

    aput-object v5, v6, v13

    aput-object v4, v6, v14

    .line 233
    const/4 v7, 0x3

    aput-object v0, v6, v7

    .line 232
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 234
    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 235
    return-object v3
.end method

.method private createOutAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 239
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 241
    .local v3, "set":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    .line 242
    const-string/jumbo v7, "alpha"

    .line 241
    new-array v8, v14, [F

    .line 242
    aput v12, v8, v11

    aput v10, v8, v13

    .line 241
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 243
    .local v1, "headerAlphaOut":Landroid/animation/Animator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v6, v10, v7, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 244
    .local v2, "interpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 246
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v14, [F

    .line 247
    aput v12, v8, v11

    aput v10, v8, v13

    .line 246
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 248
    .local v4, "stackAlphaIn":Landroid/animation/Animator;
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 250
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 251
    const-string/jumbo v7, "translationY"

    .line 250
    new-array v8, v14, [F

    .line 251
    aput v10, v8, v11

    iget v9, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v13

    .line 250
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 252
    .local v5, "stackTranslationOut":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    .line 253
    const-string/jumbo v7, "imageAlpha"

    const/16 v8, 0xff

    .line 252
    filled-new-array {v8, v11}, [I

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 254
    .local v0, "dismissButtonAlphaOut":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 256
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/PathInterpolator;
    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v6, v10, v7, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 257
    .restart local v2    # "interpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v5, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAlphaAnimDuration:J

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 259
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v11

    aput-object v5, v6, v13

    aput-object v4, v6, v14

    .line 260
    const/4 v7, 0x3

    aput-object v0, v6, v7

    .line 259
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    new-instance v6, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$6;

    invoke-direct {v6, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$6;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    return-object v3
.end method

.method private handleNotificationFilterPanelIn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setAlpha(F)V

    .line 179
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setClickable(Z)V

    .line 181
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "Callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;

    .line 182
    .local v0, "Callback":Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;
    invoke-interface {v0, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;->onShowingPanel(Z)V

    goto :goto_0

    .line 184
    .end local v0    # "Callback":Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setShowFilterPanel(Z)V

    .line 177
    return-void
.end method

.method private handleNotificationFilterPanelOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setVisibility(I)V

    .line 170
    invoke-virtual {p0, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setClickable(Z)V

    .line 171
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "Callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;

    .line 172
    .local v0, "Callback":Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;
    invoke-interface {v0, v3}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;->onShowingPanel(Z)V

    goto :goto_0

    .line 174
    .end local v0    # "Callback":Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;
    :cond_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-virtual {v2, v3}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setShowFilterPanel(Z)V

    .line 168
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;)V
    .locals 1
    .param p1, "Callback"    # Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$Callback;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public closeNotificationFilterPanel(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->setIsFilterPanelShowing(Z)V

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 158
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    if-eqz p1, :cond_2

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelOut()V

    goto :goto_0
.end method

.method public isNotificationFilterPanelShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 106
    const v0, 0x7f0f01bc

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 107
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 108
    new-instance v0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$4;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0f01bb

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    new-instance v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$5;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0f01b8

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    .line 129
    const v0, 0x7f0f01b9

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterInterceptedTips:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0f01ba

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    .line 131
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->createInAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    .line 132
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->createOutAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 191
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 192
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 191
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 189
    return-void
.end method

.method public openNotificationFilterPanel(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isQSPanelDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->setIsFilterPanelShowing(Z)V

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 144
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->handleNotificationFilterPanelIn()V

    .line 146
    if-eqz p1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 148
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 149
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mStackTranslationY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 150
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mAnimIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 139
    :cond_2
    return-void
.end method

.method public setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
    .locals 2
    .param p1, "numberView"    # Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mNumberView:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    new-instance v1, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$3;-><init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 69
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    const v2, 0x7f0b02d6

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterInterceptedTips:Landroid/widget/TextView;

    const v2, 0x7f0900d4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterSettings:Landroid/widget/TextView;

    const v2, 0x7f0900d6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mDismissButton:Landroid/widget/TextView;

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    return-void

    .line 200
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    const v2, 0x7f0b02d7

    .line 200
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->mFilterHeaderMarginTop:I

    goto :goto_0
.end method
