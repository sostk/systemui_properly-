.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiState"
.end annotation


# instance fields
.field connecting:Z

.field disabling:Z

.field enabling:Z

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .prologue
    .line 1158
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V

    move-object v0, p1

    .line 1160
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .line 1161
    .local v0, "st":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1162
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    .line 1163
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    .line 1164
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    .line 1157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1182
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1184
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1182
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1185
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1182
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1186
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1182
    if-eqz v0, :cond_0

    .line 1187
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1182
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1170
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 1172
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1173
    const-string/jumbo v1, "enabling="

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1173
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabling:Z

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    const-string/jumbo v1, "disabling="

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->disabling:Z

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1175
    const-string/jumbo v1, "connecting="

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1175
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connecting:Z

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1169
    return-void
.end method
