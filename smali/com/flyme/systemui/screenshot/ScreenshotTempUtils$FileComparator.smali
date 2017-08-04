.class Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileComparator;
.super Ljava/lang/Object;
.source "ScreenshotTempUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/screenshot/ScreenshotTempUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;)I
    .locals 4
    .param p1, "file1"    # Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;
    .param p2, "file2"    # Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    .prologue
    .line 119
    iget-wide v0, p1, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    iget-wide v2, p2, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;->lastModified:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 120
    const/4 v0, -0x1

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "file1"    # Ljava/lang/Object;
    .param p2, "file2"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    .end local p1    # "file1":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;

    .end local p2    # "file2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileComparator;->compare(Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;Lcom/flyme/systemui/screenshot/ScreenshotTempUtils$FileInfo;)I

    move-result v0

    return v0
.end method
