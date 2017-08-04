.class Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;
.super Ljava/lang/Object;
.source "UpdaterUtils.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->getImageListener(Landroid/widget/ImageView;IILcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field res:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

.field final synthetic val$defaultImageResId:I

.field final synthetic val$errorImageResId:I

.field final synthetic val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;ILandroid/widget/ImageView;Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;I)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->this$0:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    iput p2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$errorImageResId:I

    iput-object p3, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$view:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    iput p5, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$defaultImageResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    iget-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->this$0:Lcom/meizu/flyme/activeview/utils/UpdaterUtils;

    invoke-static {v0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils;->access$000(Lcom/meizu/flyme/activeview/utils/UpdaterUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorResponse error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$errorImageResId:I

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    iget v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$errorImageResId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_3

    .line 99
    :goto_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;->onLoadError(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 5
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 118
    iget v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$defaultImageResId:I

    if-nez v1, :cond_4

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_3

    .line 115
    :goto_2
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;->onLoadFinished(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    iget v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$defaultImageResId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 123
    :goto_3
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_6

    .line 126
    :goto_4
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$listener:Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use Default image defaultImageResId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$defaultImageResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$OnLoadListener;->onLoadError(ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->res:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_3

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/flyme/activeview/utils/UpdaterUtils$2;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method
