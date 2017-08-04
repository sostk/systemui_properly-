.class Lcom/meizu/sharewidget/widget/ShareViewGroup$1;
.super Ljava/lang/Object;
.source "ShareViewGroup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/sharewidget/widget/ShareViewGroup;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

.field final synthetic val$adapter:Lcom/meizu/sharewidget/adapter/GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/sharewidget/widget/ShareViewGroup;Lcom/meizu/sharewidget/adapter/GridViewAdapter;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iput-object p2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->val$adapter:Lcom/meizu/sharewidget/adapter/GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->val$adapter:Lcom/meizu/sharewidget/adapter/GridViewAdapter;

    invoke-virtual {v0, p3, v4}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 249
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareListener:Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_4

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->val$adapter:Lcom/meizu/sharewidget/adapter/GridViewAdapter;

    invoke-virtual {v0, p3, v4}, Lcom/meizu/sharewidget/adapter/GridViewAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v6

    .line 261
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$000(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    :goto_1
    if-nez v6, :cond_6

    .line 277
    :cond_1
    :goto_2
    return-void

    .line 251
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mShareListener:Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;->onShareClick(Landroid/content/pm/ResolveInfo;Landroid/view/View;IJ)V

    .line 252
    return-void

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 262
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, -0x2000001

    and-int/2addr v0, v2

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 266
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$100(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v2, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0, v2, v3}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setEnableForAll(Landroid/view/View;Z)V

    goto :goto_2

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$200(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Landroid/widget/CheckBox;

    move-result-object v0

    if-nez v0, :cond_9

    .line 271
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 272
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resetData()V

    goto :goto_2

    .line 267
    :cond_9
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$200(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$200(Lcom/meizu/sharewidget/widget/ShareViewGroup;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/meizu/sharewidget/widget/ShareViewGroup$1;->this$0:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-static {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->access$300(Lcom/meizu/sharewidget/widget/ShareViewGroup;)V

    goto :goto_3
.end method
