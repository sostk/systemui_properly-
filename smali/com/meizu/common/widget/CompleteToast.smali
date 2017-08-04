.class public Lcom/meizu/common/widget/CompleteToast;
.super Landroid/widget/Toast;
.source "CompleteToast.java"


# instance fields
.field private mToastImage:Landroid/widget/ImageView;

.field private mToastText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 53
    sget v2, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    const/16 v2, 0x11

    .line 55
    invoke-virtual {p0, v2, v4, v4}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 56
    iget-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 43
    sget v2, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    const/16 v2, 0x11

    .line 45
    invoke-virtual {p0, v2, v4, v4}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 46
    iget-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 63
    sget v2, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 64
    iget-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CompleteToast;->setView(Landroid/view/View;)V

    const/16 v2, 0x11

    .line 66
    invoke-virtual {p0, v2, v4, v4}, Lcom/meizu/common/widget/CompleteToast;->setGravity(III)V

    .line 67
    iget-object v2, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/meizu/common/widget/CompleteToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, "toast":Lcom/meizu/common/widget/CompleteToast;
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 79
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/common/widget/CompleteToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .local v0, "toast":Lcom/meizu/common/widget/CompleteToast;
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 73
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Lcom/meizu/common/widget/CompleteToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    .line 83
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 84
    .local v0, "toast":Lcom/meizu/common/widget/CompleteToast;
    invoke-virtual {v0, p3}, Lcom/meizu/common/widget/CompleteToast;->setDuration(I)V

    .line 85
    return-object v0
.end method
