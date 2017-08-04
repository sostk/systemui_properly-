.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field connected:Z

.field enabled:Z

.field iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

.field inetCondition:I

.field level:I

.field networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field rssi:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2088
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.State;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .prologue
    .line 2104
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.State;"
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    .line 2105
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    .line 2106
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    .line 2107
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 2108
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    .line 2109
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityIn:Z

    .line 2110
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityOut:Z

    .line 2111
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->rssi:I

    .line 2112
    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    .line 2114
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 2103
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.State;"
    const/4 v1, 0x0

    .line 2144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2145
    return v1

    :cond_0
    move-object v0, p1

    .line 2147
    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    .line 2148
    .local v0, "other":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    if-ne v2, v3, :cond_1

    .line 2149
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    if-ne v2, v3, :cond_1

    .line 2150
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    if-ne v2, v3, :cond_1

    .line 2151
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    if-ne v2, v3, :cond_1

    .line 2152
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    if-ne v2, v3, :cond_1

    .line 2153
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityIn:Z

    if-ne v2, v3, :cond_1

    .line 2154
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityOut:Z

    if-ne v2, v3, :cond_1

    .line 2155
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->rssi:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->rssi:I

    if-ne v2, v3, :cond_1

    .line 2156
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 2148
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2120
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.State;"
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2122
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 2123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2125
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .local p0, "this":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;, "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController<TT;TI;>.State;"
    const/16 v2, 0x2c

    .line 2130
    const-string/jumbo v0, "connected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2131
    const-string/jumbo v1, "enabled="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2131
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->enabled:Z

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2132
    const-string/jumbo v1, "level="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2132
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->level:I

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2133
    const-string/jumbo v1, "inetCondition="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2133
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->inetCondition:I

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2134
    const-string/jumbo v1, "iconGroup="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2134
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2135
    const-string/jumbo v1, "activityIn="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2135
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityIn:Z

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2136
    const-string/jumbo v1, "activityOut="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2136
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->activityOut:Z

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2137
    const-string/jumbo v1, "rssi="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2137
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->rssi:I

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2138
    const-string/jumbo v1, "networkType="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->networkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2139
    const-string/jumbo v1, "lastModified="

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2139
    const-string/jumbo v1, "MM-dd hh:mm:ss"

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;->time:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2129
    return-void
.end method
