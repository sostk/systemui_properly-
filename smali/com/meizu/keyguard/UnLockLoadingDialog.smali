.class public Lcom/meizu/keyguard/UnLockLoadingDialog;
.super Lcom/meizu/common/app/LoadingDialog;
.source "UnLockLoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/meizu/common/app/LoadingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v4}, Lcom/meizu/keyguard/UnLockLoadingDialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/meizu/keyguard/UnLockLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 24
    const/16 v3, 0x7d9

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 25
    sget v2, Lcom/meizu/common/R$id;->applyAnimTitle:I

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/UnLockLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    .local v0, "applyAnimTitle":Landroid/widget/TextView;
    const-string/jumbo v2, "sans-serif-medium"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 27
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    return-void
.end method
