.class public Lcom/meizu/keyguard/PasswordEditText;
.super Landroid/widget/EditText;
.source "PasswordEditText.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mIsHidden:Z

.field private mRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/meizu/keyguard/PasswordEditText;->mRight:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v0, p0, Lcom/meizu/keyguard/PasswordEditText;->mBounds:Landroid/graphics/Rect;

    .line 77
    invoke-super {p0}, Landroid/widget/EditText;->finalize()V

    .line 74
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v1, 0x1

    .line 44
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_1

    iget-object v7, p0, Lcom/meizu/keyguard/PasswordEditText;->mRight:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 45
    iget-object v7, p0, Lcom/meizu/keyguard/PasswordEditText;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/keyguard/PasswordEditText;->mBounds:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 47
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 49
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/keyguard/PasswordEditText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v3, v7, :cond_1

    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-gt v3, v7, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getPaddingTop()I

    move-result v7

    if-lt v4, v7, :cond_1

    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-gt v4, v7, :cond_1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    iget-boolean v7, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    if-eqz v7, :cond_3

    .line 52
    invoke-virtual {p0, v6}, Lcom/meizu/keyguard/PasswordEditText;->setActivated(Z)V

    .line 53
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/meizu/keyguard/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 58
    :goto_1
    iget-boolean v7, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    if-eqz v7, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/meizu/keyguard/PasswordEditText;->mIsHidden:Z

    .line 61
    invoke-virtual {p0}, Lcom/meizu/keyguard/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 62
    .local v0, "charSequence":Ljava/lang/CharSequence;
    instance-of v5, v0, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 63
    check-cast v2, Landroid/text/Spannable;

    .line 64
    .local v2, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 67
    .end local v2    # "spanText":Landroid/text/Spannable;
    :cond_0
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 70
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 43
    .end local v1    # "isEmpty":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isEmpty":Z
    goto :goto_0

    .line 55
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/meizu/keyguard/PasswordEditText;->setActivated(Z)V

    .line 56
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/meizu/keyguard/PasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    :cond_4
    move v5, v6

    .line 58
    goto :goto_2
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    if-eqz p3, :cond_0

    .line 37
    iput-object p3, p0, Lcom/meizu/keyguard/PasswordEditText;->mRight:Landroid/graphics/drawable/Drawable;

    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
