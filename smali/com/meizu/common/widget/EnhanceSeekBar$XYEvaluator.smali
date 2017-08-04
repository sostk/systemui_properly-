.class Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/EnhanceSeekBar;
    .param p2, "x1"    # Lcom/meizu/common/widget/EnhanceSeekBar$1;

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    move-object v1, p2

    .line 1031
    check-cast v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .local v1, "startXY":Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
    move-object v0, p3

    .line 1032
    check-cast v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 1033
    .local v0, "endXY":Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
    new-instance v2, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V

    return-object v2
.end method
