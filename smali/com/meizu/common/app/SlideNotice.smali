.class public Lcom/meizu/common/app/SlideNotice;
.super Ljava/lang/Object;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$1;,
        Lcom/meizu/common/app/SlideNotice$NoticeHandler;,
        Lcom/meizu/common/app/SlideNotice$SlideContainerView;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController;,
        Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;
    }
.end annotation


# static fields
.field private static final HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final NOTICE_CLICK:I = 0x0

.field public static final NOTICE_TYPE_FAILURE:I = 0x0

.field public static final NOTICE_TYPE_SUCCESS:I = 0x1

.field public static final SHOW_ANIMATION_DURATION:I = 0x140

.field private static final SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SLIDE_TYPE_FROM_BOTTOM:I = 0x2

.field public static final SLIDE_TYPE_FROM_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideNotice"

.field private static mService:Lcom/meizu/common/app/SlideNoticeManager;

.field private static sMeizuFlag:Ljava/lang/reflect/Field;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3eeb851f    # 0.46f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3d79db23    # 0.061f

    const v3, 0x3e75c28f    # 0.24f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {v0, p0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;-><init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .line 131
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    .line 139
    return-void
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .prologue
    .line 71
    sput-object p0, Lcom/meizu/common/app/SlideNotice;->sMeizuFlag:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getManager()Lcom/meizu/common/app/SlideNoticeManager;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager;

    invoke-direct {v0}, Lcom/meizu/common/app/SlideNoticeManager;-><init>()V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    .line 118
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lcom/meizu/common/app/SlideNotice;->mService:Lcom/meizu/common/app/SlideNoticeManager;

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-static {p0, p1, v0, v0}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I
    .param p3, "duration"    # I

    .prologue
    .line 481
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0, p1, p3}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 482
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 505
    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/app/SlideNotice;->makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    .line 519
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 522
    return-object v0
.end method

.method public static makeSlideNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I
    .param p3, "duration"    # I

    .prologue
    .line 539
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setNoticeType(I)V

    .line 542
    iput p3, v0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 543
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method public cancelNotice()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->hide()V

    .line 424
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 425
    return-void
.end method

.method public cancelWithoutAnim()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    .line 432
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 433
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->cancel()V

    .line 399
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public resetSlideFrom()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->resetTop()V

    .line 238
    return-void
.end method

.method public setActionBarToTop(Z)V
    .locals 1
    .param p1, "toTop"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 248
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setAnchor(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method public setBeginColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    .line 157
    return-void
.end method

.method public setBelowDefaultActionBar(Z)V
    .locals 1
    .param p1, "belowDefaultActionBar"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    .line 256
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setCustomView(Landroid/view/View;)V

    .line 552
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    .line 319
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method public setEndColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    .line 166
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    .line 494
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeHeight(I)V

    .line 265
    return-void
.end method

.method public setIsOverlaidByStatusBar(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 301
    return-void
.end method

.method public setLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setLeft(I)V

    .line 230
    return-void
.end method

.method public setNoTitleBarStyle(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setIsOverlaidByStatusBar(Z)V

    .line 293
    return-void
.end method

.method public setNoticeBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeBgColor(I)V

    .line 174
    return-void
.end method

.method public setNoticeType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_success_begin_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 198
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_success_end_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_failure_begin_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setBeginColor(I)V

    .line 191
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_slide_notice_failure_end_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/SlideNotice;->setEndColor(I)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setOnClickNoticeListener(Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;)V

    .line 309
    return-void
.end method

.method public setSlideType(I)V
    .locals 1
    .param p1, "slideType"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    .line 564
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setYOffset(I)V

    .line 212
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeWidth(I)V

    .line 274
    return-void
.end method

.method public setYOffset(I)V
    .locals 1
    .param p1, "yOffset"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iput p1, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    .line 221
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 0
    .param p1, "isKeeped"    # Z

    .prologue
    .line 353
    return-void
.end method

.method public showAndFinish(J)V
    .locals 0
    .param p1, "keepTime"    # J

    .prologue
    .line 442
    return-void
.end method

.method public showNotice()V
    .locals 4

    .prologue
    .line 376
    invoke-static {}, Lcom/meizu/common/app/SlideNotice;->getManager()Lcom/meizu/common/app/SlideNoticeManager;

    move-result-object v1

    .line 377
    .local v1, "service":Lcom/meizu/common/app/SlideNoticeManager;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 378
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v3, p0, Lcom/meizu/common/app/SlideNotice;->mDuration:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/common/app/SlideNoticeManager;->enqueueNotice(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;I)V

    .line 379
    return-void
.end method

.method public showNotice(Z)V
    .locals 1
    .param p1, "isKept"    # Z

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->showNotice()V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->show()V

    goto :goto_0
.end method

.method public slideToCancel()V
    .locals 0

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->cancelNotice()V

    .line 416
    return-void
.end method

.method public slideToShow()V
    .locals 0

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/meizu/common/app/SlideNotice;->showNotice()V

    .line 360
    return-void
.end method

.method public slideToShow(Z)V
    .locals 0
    .param p1, "isKept"    # Z

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->showNotice(Z)V

    .line 369
    return-void
.end method
