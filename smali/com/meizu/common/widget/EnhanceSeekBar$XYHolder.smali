.class Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYHolder"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 997
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 999
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1003
    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1004
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 1017
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1018
    return-void
.end method

.method public setXY(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1011
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1012
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1014
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 1025
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 1026
    return-void
.end method
