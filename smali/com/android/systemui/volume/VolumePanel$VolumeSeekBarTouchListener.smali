.class final Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarTouchListener"
.end annotation


# instance fields
.field private mCurXPos:F

.field private mStreamType:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p2, "streamType"    # I

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamType:I

    .line 1953
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;ILcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p2, "streamType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;-><init>(Lcom/android/systemui/volume/VolumePanel;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1959
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1960
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mCurXPos:F

    .line 1975
    :cond_0
    :goto_0
    return v3

    .line 1962
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1964
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mCurXPos:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1965
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get11(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1967
    :cond_2
    return v2

    .line 1966
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->-get3(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1969
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$VolumeSeekBarTouchListener;->mCurXPos:F

    goto :goto_0

    .line 1972
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1973
    :cond_6
    return v2
.end method
