.class Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/sharewidget/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public container:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget v0, Lcom/meizu/sharewidget/R$id;->item_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/meizu/sharewidget/R$id;->item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/meizu/sharewidget/R$id;->gridview_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/sharewidget/adapter/GridViewAdapter$ViewHolder;->container:Landroid/view/View;

    .line 178
    return-void
.end method
