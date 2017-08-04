.class Lcom/meizu/common/util/ActionBarProxy$1;
.super Ljava/lang/Object;
.source "ActionBarProxy.java"

# interfaces
.implements Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ActionBarProxy;->setTopBackButtonEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ActionBarProxy;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ActionBarProxy;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonEnableChange(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/16 v5, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$000(Lcom/meizu/common/util/ActionBarProxy;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 256
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    .line 259
    .end local p1    # "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$000(Lcom/meizu/common/util/ActionBarProxy;)Landroid/app/ActionBar;

    move-result-object v4

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 260
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$000(Lcom/meizu/common/util/ActionBarProxy;)Landroid/app/ActionBar;

    move-result-object v4

    if-eqz p1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 261
    if-eqz p1, :cond_5

    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_6

    .line 271
    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$200(Lcom/meizu/common/util/ActionBarProxy;)Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    move-result-object v1

    if-nez v1, :cond_7

    .line 274
    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    if-eqz p1, :cond_9

    :goto_5
    invoke-static {v1, v2}, Lcom/meizu/common/util/ActionBarProxy;->access$302(Lcom/meizu/common/util/ActionBarProxy;Z)Z

    .line 275
    return-void

    .line 257
    .restart local p1    # "enabled":Z
    :cond_2
    const/4 p1, 0x1

    .local p1, "enabled":Z
    goto :goto_0

    .end local p1    # "enabled":Z
    :cond_3
    move v1, v3

    .line 259
    goto :goto_1

    :cond_4
    move v1, v3

    .line 260
    goto :goto_2

    .line 262
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 263
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    sget v4, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_top:I

    invoke-static {v1, v4}, Lcom/meizu/common/util/ActionBarProxy;->access$100(Lcom/meizu/common/util/ActionBarProxy;I)V

    goto :goto_3

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$000(Lcom/meizu/common/util/ActionBarProxy;)Landroid/app/ActionBar;

    move-result-object v1

    sget v4, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_transparent:I

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_3

    .line 271
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$300(Lcom/meizu/common/util/ActionBarProxy;)Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy$1;->this$0:Lcom/meizu/common/util/ActionBarProxy;

    invoke-static {v1}, Lcom/meizu/common/util/ActionBarProxy;->access$200(Lcom/meizu/common/util/ActionBarProxy;)Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    move-result-object v4

    if-eqz p1, :cond_8

    move v1, v2

    :goto_6
    invoke-interface {v4, v1}, Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;->onTopBackButtonEnableChange(Z)V

    goto :goto_4

    :cond_8
    move v1, v3

    goto :goto_6

    :cond_9
    move v2, v3

    .line 274
    goto :goto_5
.end method
