.class Lcom/meizu/common/widget/GradientLayout$1;
.super Ljava/lang/Object;
.source "GradientLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GradientLayout;->updateGradient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/GradientLayout;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GradientLayout;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$000(Lcom/meizu/common/widget/GradientLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iget-object v9, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getHeight()I

    move-result v2

    int-to-float v4, v2

    new-array v5, v12, [I

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v2

    aput v2, v5, v10

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$800(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v2

    aput v2, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v9, v0}, Lcom/meizu/common/widget/GradientLayout;->access$302(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 751
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$400(Lcom/meizu/common/widget/GradientLayout;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 756
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$900(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$300(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 757
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$400(Lcom/meizu/common/widget/GradientLayout;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 760
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GradientLayout;->postInvalidate()V

    .line 761
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/meizu/common/widget/GradientLayout;->access$200(Lcom/meizu/common/widget/GradientLayout;I)I

    move-result v8

    .line 738
    .local v8, "lighterColor":I
    iget-object v9, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getHeight()I

    move-result v2

    int-to-float v4, v2

    new-array v5, v12, [I

    aput v8, v5, v10

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v2

    aput v2, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v9, v0}, Lcom/meizu/common/widget/GradientLayout;->access$302(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 740
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$400(Lcom/meizu/common/widget/GradientLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$700(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$700(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 741
    :cond_2
    iget-object v9, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getHeight()I

    move-result v2

    int-to-float v4, v2

    new-array v5, v12, [I

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v2, v8}, Lcom/meizu/common/widget/GradientLayout;->access$600(Lcom/meizu/common/widget/GradientLayout;I)I

    move-result v2

    aput v2, v5, v10

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v7}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v7

    invoke-static {v2, v7}, Lcom/meizu/common/widget/GradientLayout;->access$600(Lcom/meizu/common/widget/GradientLayout;I)I

    move-result v2

    aput v2, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v9, v0}, Lcom/meizu/common/widget/GradientLayout;->access$502(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 752
    .end local v8    # "lighterColor":I
    :cond_3
    iget-object v9, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/GradientLayout;->getHeight()I

    move-result v2

    int-to-float v4, v2

    new-array v5, v12, [I

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v7}, Lcom/meizu/common/widget/GradientLayout;->access$100(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v7

    invoke-static {v2, v7}, Lcom/meizu/common/widget/GradientLayout;->access$600(Lcom/meizu/common/widget/GradientLayout;I)I

    move-result v2

    aput v2, v5, v10

    iget-object v2, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v7}, Lcom/meizu/common/widget/GradientLayout;->access$800(Lcom/meizu/common/widget/GradientLayout;)I

    move-result v7

    invoke-static {v2, v7}, Lcom/meizu/common/widget/GradientLayout;->access$600(Lcom/meizu/common/widget/GradientLayout;I)I

    move-result v2

    aput v2, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v9, v0}, Lcom/meizu/common/widget/GradientLayout;->access$502(Lcom/meizu/common/widget/GradientLayout;Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1000(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/GradientLayout$1;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v1}, Lcom/meizu/common/widget/GradientLayout;->access$500(Lcom/meizu/common/widget/GradientLayout;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1
.end method
