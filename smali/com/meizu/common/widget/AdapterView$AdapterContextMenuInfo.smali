.class public Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 410
    iput p2, p0, Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 411
    iput-wide p3, p0, Lcom/meizu/common/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 412
    return-void
.end method
