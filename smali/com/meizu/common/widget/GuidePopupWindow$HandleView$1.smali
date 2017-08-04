.class Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GuidePopupWindow$HandleView;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

.field final synthetic val$this$0:Lcom/meizu/common/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Lcom/meizu/common/widget/GuidePopupWindow;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;->this$1:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;->val$this$0:Lcom/meizu/common/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView$1;->this$1:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v0, v0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->this$0:Lcom/meizu/common/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow;->dismiss()V

    .line 720
    return-void
.end method
