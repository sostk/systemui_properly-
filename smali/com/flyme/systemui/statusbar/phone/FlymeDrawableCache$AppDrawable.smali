.class Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
.super Ljava/lang/Object;
.source "FlymeDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppDrawable"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    .line 18
    return-void
.end method
