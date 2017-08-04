.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconGroup"
.end annotation


# instance fields
.field final mContentDesc:[I

.field final mDiscContentDesc:I

.field final mName:Ljava/lang/String;

.field final mQsDiscState:I

.field final mQsIcons:[[I

.field final mQsNullState:I

.field final mSbDiscState:I

.field final mSbIcons:[[I

.field final mSbNullState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIII)V
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

    .prologue
    .line 2068
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.IconGroup;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2071
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mName:Ljava/lang/String;

    .line 2072
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbIcons:[[I

    .line 2073
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsIcons:[[I

    .line 2074
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mContentDesc:[I

    .line 2075
    iput p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbNullState:I

    .line 2076
    iput p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsNullState:I

    .line 2077
    iput p7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbDiscState:I

    .line 2078
    iput p8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsDiscState:I

    .line 2079
    iput p9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mDiscContentDesc:I

    .line 2070
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2084
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.IconGroup;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IconGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
