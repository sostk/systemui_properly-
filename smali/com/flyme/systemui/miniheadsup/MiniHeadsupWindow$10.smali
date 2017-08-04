.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues:[I


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field startY:F

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;


# direct methods
.method private static synthetic -getcom_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->-com_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->-com_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->values()[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->-com_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
    .locals 2
    .param p1, "this$0"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
    .param p2, "val$state"    # Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->it:Landroid/view/animation/Interpolator;

    .line 532
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->startY:F

    .line 530
    return-void

    .line 531
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 536
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->it:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 537
    .local v0, "f":F
    invoke-static {}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->-getcom_flyme_systemui_miniheadsup_MiniHeadsupWindow$HideStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 535
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->startY:F

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->-get2(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    move-result-object v3

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setTranslationY(F)V

    goto :goto_0

    .line 543
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAlpha(F)V

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
