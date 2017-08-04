.class Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;
.super Ljava/lang/Object;
.source "ActiveViewImpl.java"

# interfaces
.implements Lcom/meizu/flyme/activeview/adapter/ViewAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->onParseResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;->this$2:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "textview"

    .line 2016
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "imageview"

    .line 2020
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 2024
    return-object v2

    .line 2017
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;->this$2:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;

    iget-object v2, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    iget-object v2, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "textview":Landroid/widget/TextView;
    const/high16 v2, 0x41200000    # 10.0f

    .line 2018
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2019
    return-object v1

    .line 2021
    .end local v1    # "textview":Landroid/widget/TextView;
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1$1;->this$2:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;

    iget-object v2, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9$1;->this$1:Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;

    iget-object v2, v2, Lcom/meizu/flyme/activeview/views/ActiveViewImpl$9;->this$0:Lcom/meizu/flyme/activeview/views/ActiveViewImpl;

    invoke-static {v2}, Lcom/meizu/flyme/activeview/views/ActiveViewImpl;->access$600(Lcom/meizu/flyme/activeview/views/ActiveViewImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2022
    .local v0, "imageView":Landroid/widget/ImageView;
    return-object v0
.end method
