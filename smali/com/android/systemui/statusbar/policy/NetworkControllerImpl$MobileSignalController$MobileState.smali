.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field dataConnected:Z

.field dataSim:Z

.field imsState:I

.field inetForNetwork:I

.field isEmergency:Z

.field networkName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;-><init>()V

    .line 1823
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    .line 1816
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .prologue
    .line 1826
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V

    move-object v0, p1

    .line 1827
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    .line 1828
    .local v0, "state":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    .line 1829
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1830
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    .line 1831
    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    .line 1832
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    .line 1833
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    .line 1834
    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    .line 1825
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1852
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1853
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1852
    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1854
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 1855
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 1856
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 1857
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 1858
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    if-ne v0, v2, :cond_1

    .line 1859
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1852
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1859
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v1

    .line 1852
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 1839
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 1840
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1841
    const-string/jumbo v0, "dataSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1842
    const-string/jumbo v0, "networkName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1843
    const-string/jumbo v0, "dataConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1844
    const-string/jumbo v0, "inetForNetwork="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1845
    const-string/jumbo v0, "isEmergency="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1846
    const-string/jumbo v0, "mImsState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->imsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1847
    const-string/jumbo v0, "airplaneMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1838
    return-void
.end method
