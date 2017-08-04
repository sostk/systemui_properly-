.class abstract Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;",
        "I:",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

.field private mHistoryIndex:I

.field protected final mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field protected final mSignalClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSignalsChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field protected final mTransportType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    .local p4, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;>;"
    .local p5, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;>;"
    const/16 v3, 0x10

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkController."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mTag:Ljava/lang/String;

    .line 1890
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1891
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mTransportType:I

    .line 1892
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mContext:Landroid/content/Context;

    .line 1893
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    .line 1894
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mSignalClusters:Ljava/util/List;

    .line 1895
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .line 1896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .line 1898
    new-array v1, v3, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .line 1899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2022
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Current State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    const/4 v1, 0x0

    .line 2027
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 2028
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2027
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v2, -0x1

    .line 2032
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, v1

    .line 2031
    if-lt v0, v2, :cond_2

    .line 2033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Previous State("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistoryIndex:I

    add-int/lit8 v3, v3, 0x10

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2034
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    and-int/lit8 v4, v0, 0xf

    aget-object v3, v3, v4

    .line 2033
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2021
    :cond_2
    return-void
.end method

.method public getContentDescription()I
    .locals 2

    .prologue
    .line 1984
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mContentDesc:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 1987
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mDiscContentDesc:I

    return v0
.end method

.method public getCurrentIconId()I
    .locals 2

    .prologue
    .line 1970
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbIcons:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    if-eqz v0, :cond_1

    .line 1973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbDiscState:I

    return v0

    .line 1975
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mSbNullState:I

    return v0
.end method

.method protected getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 2010
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    return-object v0
.end method

.method public getQsCurrentIconId()I
    .locals 2

    .prologue
    .line 1957
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    if-eqz v0, :cond_0

    .line 1958
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsIcons:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    aget v0, v0, v1

    return v0

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    if-eqz v0, :cond_1

    .line 1960
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsDiscState:I

    return v0

    .line 1962
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;->mQsNullState:I

    return v0
.end method

.method public getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1906
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    return-object v0
.end method

.method protected getStringIfExists(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2006
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTransportType()I
    .locals 1

    .prologue
    .line 1910
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mTransportType:I

    return v0
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 1934
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change in state from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1937
    const-string/jumbo v2, "\tto: "

    .line 1936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1937
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .line 1936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v0, 0x1

    return v0

    .line 1941
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notifyListeners()V
.end method

.method public notifyListenersIfNecessary()V
    .locals 1

    .prologue
    .line 1992
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->saveLastState()V

    .line 1994
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->notifyListeners()V

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1991
    :cond_0
    return-void
.end method

.method protected recordLastState()V
    .locals 3

    .prologue
    .line 2018
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistory:[Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistoryIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mHistoryIndex:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V

    .line 2017
    return-void
.end method

.method resetLastState()V
    .locals 2

    .prologue
    .line 1926
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V

    .line 1925
    return-void
.end method

.method public saveLastState()V
    .locals 4

    .prologue
    .line 1946
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->recordLastState()V

    .line 1949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    .line 1950
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V

    .line 1944
    return-void
.end method

.method public setInetCondition(I)V
    .locals 1
    .param p1, "inetCondition"    # I

    .prologue
    .line 1914
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    .line 1915
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->notifyListenersIfNecessary()V

    .line 1913
    return-void
.end method
