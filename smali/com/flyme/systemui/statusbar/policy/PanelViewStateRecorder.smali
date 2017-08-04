.class public Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;
.super Ljava/lang/Object;
.source "PanelViewStateRecorder.java"


# static fields
.field private static isFilterPanelShowing:Z

.field private static isQSPanelDetailShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFilterPanelShowing()Z
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "PanelViewStateRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFilterPanelShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isFilterPanelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isFilterPanelShowing:Z

    return v0
.end method

.method public static isQSPanelDetailShowing()Z
    .locals 3

    .prologue
    .line 25
    const-string/jumbo v0, "PanelViewStateRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isQSPanelDetailShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isQSPanelDetailShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isQSPanelDetailShowing:Z

    return v0
.end method

.method public static setIsFilterPanelShowing(Z)V
    .locals 0
    .param p0, "isFilterPanelShowing"    # Z

    .prologue
    .line 21
    sput-boolean p0, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isFilterPanelShowing:Z

    .line 20
    return-void
.end method

.method public static setIsQSPanelDetailShowing(Z)V
    .locals 0
    .param p0, "isQSPanelDetailShowing"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/flyme/systemui/statusbar/policy/PanelViewStateRecorder;->isQSPanelDetailShowing:Z

    .line 29
    return-void
.end method
