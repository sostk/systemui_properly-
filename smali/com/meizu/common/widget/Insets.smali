.class Lcom/meizu/common/widget/Insets;
.super Ljava/lang/Object;
.source "Switch.java"


# static fields
.field public static final NONE:Lcom/meizu/common/widget/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1665
    new-instance v0, Lcom/meizu/common/widget/Insets;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    sput-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    iput p1, p0, Lcom/meizu/common/widget/Insets;->left:I

    .line 1674
    iput p2, p0, Lcom/meizu/common/widget/Insets;->top:I

    .line 1675
    iput p3, p0, Lcom/meizu/common/widget/Insets;->right:I

    .line 1676
    iput p4, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    .line 1677
    return-void
.end method

.method public static of(IIII)Lcom/meizu/common/widget/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1691
    if-eqz p0, :cond_1

    .line 1694
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    return-object v0

    .line 1691
    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1692
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Lcom/meizu/common/widget/Insets;
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1704
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1716
    if-eq p0, p1, :cond_1

    .line 1717
    if-nez p1, :cond_2

    :cond_0
    return v3

    .line 1716
    :cond_1
    return v4

    .line 1717
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    move-object v0, p1

    .line 1719
    check-cast v0, Lcom/meizu/common/widget/Insets;

    .line 1721
    .local v0, "insets":Lcom/meizu/common/widget/Insets;
    iget v1, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v2, v0, Lcom/meizu/common/widget/Insets;->bottom:I

    if-ne v1, v2, :cond_3

    .line 1722
    iget v1, p0, Lcom/meizu/common/widget/Insets;->left:I

    iget v2, v0, Lcom/meizu/common/widget/Insets;->left:I

    if-ne v1, v2, :cond_4

    .line 1723
    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    iget v2, v0, Lcom/meizu/common/widget/Insets;->right:I

    if-ne v1, v2, :cond_5

    .line 1724
    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    iget v2, v0, Lcom/meizu/common/widget/Insets;->top:I

    if-ne v1, v2, :cond_6

    .line 1726
    return v4

    .line 1721
    :cond_3
    return v3

    .line 1722
    :cond_4
    return v3

    .line 1723
    :cond_5
    return v3

    .line 1724
    :cond_6
    return v3
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1731
    iget v0, p0, Lcom/meizu/common/widget/Insets;->left:I

    .line 1732
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/meizu/common/widget/Insets;->top:I

    add-int v0, v1, v2

    .line 1733
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/meizu/common/widget/Insets;->right:I

    add-int v0, v1, v2

    .line 1734
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    add-int v0, v1, v2

    .line 1735
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
