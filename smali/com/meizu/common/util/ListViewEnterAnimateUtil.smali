.class public Lcom/meizu/common/util/ListViewEnterAnimateUtil;
.super Ljava/lang/Object;
.source "ListViewEnterAnimateUtil.java"


# static fields
.field private static DEFAULTDELAY:I

.field private static DEFAULTDURATION:I

.field private static DEFAULTINTERVAL:I

.field private static DEFAULTOFFSETRATIO:F


# instance fields
.field private mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:I

.field private mDuration:I

.field private mInterval:I

.field private mItemOffsetRatio:F

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x19

    .line 19
    sput v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTINTERVAL:I

    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTDELAY:I

    const/16 v0, 0xc8

    .line 21
    sput v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTDURATION:I

    const/high16 v0, 0x3e000000    # 0.125f

    .line 22
    sput v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTOFFSETRATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTINTERVAL:I

    iput v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mInterval:I

    .line 25
    sget v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTDELAY:I

    iput v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDelay:I

    .line 26
    sget v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTDURATION:I

    iput v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDuration:I

    .line 27
    sget v0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->DEFAULTOFFSETRATIO:F

    iput v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mItemOffsetRatio:F

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iput-object p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mListView:Landroid/widget/ListView;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/util/ListViewEnterAnimateUtil;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->reset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/util/ListViewEnterAnimateUtil;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/ListViewEnterAnimateUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private reset(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 85
    return-void
.end method

.method private startItemAnimate(ILandroid/view/View;II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "delay"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mItemOffsetRatio:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 59
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;

    invoke-direct {v1, p0, p2}, Lcom/meizu/common/util/ListViewEnterAnimateUtil$1;-><init>(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 70
    new-instance v1, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/meizu/common/util/ListViewEnterAnimateUtil$2;-><init>(Lcom/meizu/common/util/ListViewEnterAnimateUtil;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object v1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    return-void
.end method


# virtual methods
.method public runEnterAnimation()V
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 42
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 47
    return-void

    .line 40
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->stopEnterAnimation()V

    goto :goto_0

    .line 43
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 45
    iget v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mInterval:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDelay:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDuration:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->startItemAnimate(ILandroid/view/View;II)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDelay:I

    .line 113
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mInterval:I

    .line 104
    return-void
.end method

.method public setItemDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mDuration:I

    .line 122
    return-void
.end method

.method public setItemOffsetRatio(F)V
    .locals 0
    .param p1, "itemOffsetRatio"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mItemOffsetRatio:F

    .line 131
    return-void
.end method

.method public stopEnterAnimation()V
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/meizu/common/util/ListViewEnterAnimateUtil;->mAnimatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 93
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0
.end method
