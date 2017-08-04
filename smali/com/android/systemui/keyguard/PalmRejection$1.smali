.class Lcom/android/systemui/keyguard/PalmRejection$1;
.super Ljava/lang/Object;
.source "PalmRejection.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/PalmRejection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/PalmRejection;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/PalmRejection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/PalmRejection;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/keyguard/PalmRejection$1;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 61
    .local v1, "distance":F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection$1;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v2}, Lcom/android/systemui/keyguard/PalmRejection;->-get2(Lcom/android/systemui/keyguard/PalmRejection;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x1

    .line 64
    .local v0, "active":Z
    :goto_0
    const-string/jumbo v2, "PalmRejection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged() -- distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    const-string/jumbo v4, ", active = "

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/android/systemui/keyguard/PalmRejection$1;->this$0:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/PalmRejection;->-wrap1(Lcom/android/systemui/keyguard/PalmRejection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 56
    return-void

    .line 62
    .end local v0    # "active":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 61
    .end local v0    # "active":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 57
    .end local v0    # "active":Z
    .end local v1    # "distance":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
