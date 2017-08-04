.class Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableXYHolder"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 969
    return-void
.end method


# virtual methods
.method public getXY()Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 985
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 989
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V

    return-object v1

    .line 986
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-object v2
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 973
    return-void
.end method

.method public setXY(Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;)V
    .locals 6
    .param p1, "xyHolder"    # Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 982
    return-void

    .line 977
    :cond_0
    return-void
.end method
