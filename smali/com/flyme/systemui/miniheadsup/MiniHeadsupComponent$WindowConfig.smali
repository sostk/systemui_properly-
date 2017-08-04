.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowConfig"
.end annotation


# instance fields
.field final FIRSTWINDOW_ICON_MARGE_LEFT:F

.field final FIRSTWINDOW_MAX_WIDTH:I

.field final FIRSTWINDOW_MIN_WIDTH:I

.field final FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

.field final MINIWINDOW_OFFSET_TOP:I

.field final SECONDWINDOW_ICON_MARGE_LEFT:F

.field final SECONDWINDOW_ICON_MAX_WIDTH:I

.field final SECONDWINDOW_ICON_MIN_WIDTH:I

.field final WINDOW_HEIGHT:I

.field final WINDOW_WIDTH:I

.field firstWindowWidth:I

.field secondWindowWidth:I

.field thirdWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x92

    const/16 v3, 0x2b

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 241
    .local v1, "scale":F
    invoke-virtual {p0, v4, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    .line 242
    invoke-virtual {p0, v3, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v0

    .line 243
    .local v0, "miniwindow_height":I
    const/16 v2, 0x1c

    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    .line 244
    iget v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    .line 246
    const/16 v2, 0x7e

    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MIN_WIDTH:I

    .line 247
    invoke-virtual {p0, v4, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MAX_WIDTH:I

    .line 248
    const/16 v2, 0x31

    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    .line 250
    invoke-virtual {p0, v3, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    .line 251
    const/16 v2, 0x46

    invoke-virtual {p0, v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->getInt(IF)I

    move-result v2

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MAX_WIDTH:I

    .line 253
    const/high16 v2, 0x41a80000    # 21.0f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_ICON_MARGE_LEFT:F

    .line 254
    const/high16 v2, 0x40f00000    # 7.5f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MARGE_LEFT:F

    .line 256
    iget v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iput v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->thirdWindowWidth:I

    .line 238
    return-void
.end method


# virtual methods
.method getInt(IF)I
    .locals 2
    .param p1, "dpValue"    # I
    .param p2, "scale"    # F

    .prologue
    .line 260
    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
