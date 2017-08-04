.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # [I

    .prologue
    .line 1807
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 1809
    iput p10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 1810
    iput p11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1811
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 1812
    iput-object p13, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mQsDataType:[I

    .line 1806
    return-void
.end method
