.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
.super Ljava/lang/Object;
.source "ConnectionRateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRateSampler"
.end annotation


# instance fields
.field private mCount:J

.field private mInterface:[Ljava/lang/String;

.field private mOldBytes:[J

.field private oldMobileBytes:J

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V
    .locals 6
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "wlan0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "bt-pan"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "ppp9"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    .line 88
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x40a8000000000000L    # 3072.0

    const-wide/16 v6, 0x0

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .local v2, "rate":D
    const-wide/16 v4, 0x0

    .line 101
    .local v4, "rx":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mInterface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v10

    add-long v4, v8, v10

    .line 103
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aget-wide v8, v1, v0

    cmp-long v1, v8, v6

    if-lez v1, :cond_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aget-wide v8, v1, v0

    sub-long v8, v4, v8

    long-to-double v8, v8

    div-double/2addr v8, v12

    add-double/2addr v2, v8

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mOldBytes:[J

    aput-wide v4, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v10

    add-long v4, v8, v10

    .line 109
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    const-wide/16 v10, 0x2

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    .line 110
    iget-wide v8, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    sub-long v8, v4, v8

    long-to-double v8, v8

    div-double/2addr v8, v12

    add-double/2addr v2, v8

    .line 112
    :cond_2
    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    :cond_3
    iput-wide v6, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->mCount:J

    .line 113
    iput-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->oldMobileBytes:J

    .line 114
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get5(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {v6}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->-get5(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method
