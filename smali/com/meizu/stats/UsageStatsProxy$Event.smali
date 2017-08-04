.class Lcom/meizu/stats/UsageStatsProxy$Event;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProxy$Event$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelNum:J

.field private flymeVersion:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private packageVersion:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private properties:Ljava/lang/Object;

.field private sessionid:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy$Event$1;

    invoke-direct {v0}, Lcom/meizu/stats/UsageStatsProxy$Event$1;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 371
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    if-nez p1, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "propertiesStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    .line 537
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "UsageStatsProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - Cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "time"    # J
    .param p5, "sessionid"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "page"    # Ljava/lang/String;
    .param p8, "properties"    # Ljava/lang/Object;
    .param p9, "flymeVersion"    # Ljava/lang/String;
    .param p10, "packageVersion"    # Ljava/lang/String;
    .param p11, "source"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 392
    iput p2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 393
    iput-wide p3, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 394
    iput-object p5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 395
    iput-object p6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 396
    iput-object p7, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 397
    iput-object p8, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 398
    iput-object p9, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 399
    iput-object p10, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 400
    iput-object p11, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    .line 390
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelNum()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    return-wide v0
.end method

.method public getFlymeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertiesToJSONString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 456
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 457
    const-string/jumbo v6, ""

    return-object v6

    .line 459
    :cond_0
    const-string/jumbo v4, ""

    .line 461
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 462
    new-instance v5, Lorg/json/JSONStringer;

    invoke-direct {v5}, Lorg/json/JSONStringer;-><init>()V

    .line 463
    .local v5, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {v5}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 464
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 465
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 472
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "UsageStatsProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 467
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v5    # "stringer":Lorg/json/JSONStringer;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 468
    invoke-virtual {v5}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 470
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "stringer":Lorg/json/JSONStringer;
    :cond_2
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "UsageStatsProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    return v0
.end method

.method public setChannelNum(J)V
    .locals 1
    .param p1, "channelNum"    # J

    .prologue
    .line 501
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    .line 500
    return-void
.end method

.method public setFlymeVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "flymeVersion"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 484
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setPackageVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageVersion"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setProperties(Ljava/lang/Object;)V
    .locals 0
    .param p1, "properties"    # Ljava/lang/Object;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public setSessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionid"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 424
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 423
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", properties="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", packageName="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", packageVersion="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", source="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, "}"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    return-void

    .line 573
    :cond_0
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 577
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->channelNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 583
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->flymeVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    goto :goto_0

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    goto :goto_2

    .line 580
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
