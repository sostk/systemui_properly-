.class public Lcom/flyme/systemui/recents/bean/QuickChangeBean;
.super Ljava/lang/Object;
.source "QuickChangeBean.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrent:Landroid/graphics/Bitmap;

.field private mNext:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mBackground"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "mCurrent"    # Landroid/graphics/Bitmap;
    .param p3, "mNext"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    iput-object p2, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mCurrent:Landroid/graphics/Bitmap;

    .line 14
    iput-object p3, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mNext:Landroid/graphics/Bitmap;

    .line 11
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mCurrent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNext()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flyme/systemui/recents/bean/QuickChangeBean;->mNext:Landroid/graphics/Bitmap;

    return-object v0
.end method
