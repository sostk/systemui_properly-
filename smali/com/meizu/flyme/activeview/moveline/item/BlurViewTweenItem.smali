.class public Lcom/meizu/flyme/activeview/moveline/item/BlurViewTweenItem;
.super Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;
.source "BlurViewTweenItem.java"


# static fields
.field public static final BLUR:Ljava/lang/String; = "blur"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method public buildFrameStyle()Lcom/meizu/flyme/activeview/moveline/item/FrameStyle;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;

    invoke-direct {v0}, Lcom/meizu/flyme/activeview/moveline/item/BlurViewFrameStyle;-><init>()V

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->getPropertyValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/activeview/moveline/item/BlurViewTweenItem;->mTarget:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method public updateProperty(Ljava/lang/String;Ljava/lang/Object;F)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "fraction"    # F

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/flyme/activeview/moveline/item/ViewTweenItem;->updateProperty(Ljava/lang/String;Ljava/lang/Object;F)V

    .line 33
    return-void
.end method
